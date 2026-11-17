#include "cachelab.h"

/* case0：2x2x2 演示用 */
void gemm_case0(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < case0_m; ++i)
  {
    for (reg j = 0; j < case0_p; ++j)
    {
      reg tmpc = 0;
      for (reg k = 0; k < case0_n; ++k)
      {
        reg tmpa = A[i * case0_n + k];
        reg tmpb = B[k * case0_p + j];
        tmpc += tmpa * tmpb;
      }
      C[i * case0_p + j] = tmpc;
    }
  }
}

/* case1：16x16x16
 * 4x4 分块，C 的 4x4 块用 16 个寄存器累加，k 全部走完才写回一次。
 * 每次取 2 个 k（2kk 和 2kk+1），先把这两列的 A 装进寄存器，
 * 再在同一个 c 循环里用一条 B 行的 load 喂 4 行累加。
 */
void gemm_case1(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 4; ++i) /* C 的块行 */
  {
    for (reg j = 0; j < 4; ++j) /* C 的块列 */
    {
      reg acc[4][4]; /* 结果的一小块：16 个累加寄存器 */
      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          acc[u][v] = 0;

      for (reg kb = 0; kb < 4; ++kb) /* 每次取 4 个 k：4kb .. 4kb+3 */
      {
        for (reg c = 0; c < 4; ++c)
        {
          reg bv[4]; /* 先把这 4 个 k 的 B 值读完，各 1 条 cache 行 */
          bv[0] = B[(kb * 4 + 0) * 16 + j * 4 + c];
          bv[1] = B[(kb * 4 + 1) * 16 + j * 4 + c];
          bv[2] = B[(kb * 4 + 2) * 16 + j * 4 + c];
          bv[3] = B[(kb * 4 + 3) * 16 + j * 4 + c];

          for (reg r = 0; r < 4; ++r) /* 先读完同一行的 4 个 t（1 条 cache 行），再下一行 */
          {
            for (reg t = 0; t < 4; ++t)
            {
              reg a = A[i * 64 + r * 16 + kb * 4 + t];
              acc[r][c] += a * bv[t];
            }
          }
        }
      }

      for (reg u = 0; u < 4; ++u) /* 每个 C 元素只写一次 */
        for (reg v = 0; v < 4; ++v)
          C[i * 64 + u * 16 + j * 4 + v] = acc[u][v];


		}
  }
}

/* case2：32x32x32
 * 同 case1 的结构：4x4 分块、16 个累加寄存器、每次取 2 个 k。
 * 32 行 -> 8 个块行，32 个深度 -> 16 轮 kk。
 */
void gemm_case2(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 8; ++i) /* 块行：0..3 前 16 行，4..7 后 16 行 */
  {
    for (reg j = 0; j < 8; ++j) /* 块列 */
    {
      reg acc[4][4];
      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          acc[u][v] = 0;

      for (reg kk = 0; kk < 16; ++kk) /* 每次取 2 个 k：2kk 和 2kk+1 */
      {
        reg av0[4], av1[4]; /* 这两列的 A 全部装进来 */
        av0[0] = A[i * 128 + kk * 2];
        av0[1] = A[i * 128 + 32 + kk * 2];
        av0[2] = A[i * 128 + 64 + kk * 2];
        av0[3] = A[i * 128 + 96 + kk * 2];
        av1[0] = A[i * 128 + kk * 2 + 1];
        av1[1] = A[i * 128 + 32 + kk * 2 + 1];
        av1[2] = A[i * 128 + 64 + kk * 2 + 1];
        av1[3] = A[i * 128 + 96 + kk * 2 + 1];

        for (reg c = 0; c < 4; ++c)
        {
          reg b0 = B[kk * 64 + j * 4 + c]; /* 第 2kk 个 k 的 B 行 */
          acc[0][c] += av0[0] * b0;
          acc[1][c] += av0[1] * b0;
          acc[2][c] += av0[2] * b0;
          acc[3][c] += av0[3] * b0;
          b0 = B[kk * 64 + 32 + j * 4 + c]; /* 第 2kk+1 个 k 的 B 行 */
          acc[0][c] += av1[0] * b0;
          acc[1][c] += av1[1] * b0;
          acc[2][c] += av1[2] * b0;
          acc[3][c] += av1[3] * b0;
        }
      }

      for (reg u = 0; u < 4; ++u) /* 每个 C 元素只写一次 */
        for (reg v = 0; v < 4; ++v)
          C[i * 128 + u * 32 + j * 4 + v] = acc[u][v];
    }
  }
}

/* case3：27x41x27
 * 同 case1：C 的 4x4 块用 16 个累加寄存器，每次取 2 个 k。
 * 27 / 41 都不是 4 的倍数，所以行、列、k 都加了越界判断（判断不产生内存访问）。
 */
void gemm_case3(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 27; i += 4) /* C 的块行 */
  {
    for (reg j = 0; j < 27; j += 4) /* C 的块列 */
    {
      reg acc[4][4];
      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          acc[u][v] = 0;

      for (reg kk = 0; kk < 41; kk += 2) /* 每次取 2 个 k */
      {
        reg av0[4], av1[4]; /* 越界的行保持初值 0，贡献为 0 */
        if (i < 27)
          av0[0] = A[i * 41 + kk];
        if (i + 1 < 27)
          av0[1] = A[(i + 1) * 41 + kk];
        if (i + 2 < 27)
          av0[2] = A[(i + 2) * 41 + kk];
        if (i + 3 < 27)
          av0[3] = A[(i + 3) * 41 + kk];
        if (kk + 1 < 41)
        {
          if (i < 27)
            av1[0] = A[i * 41 + kk + 1];
          if (i + 1 < 27)
            av1[1] = A[(i + 1) * 41 + kk + 1];
          if (i + 2 < 27)
            av1[2] = A[(i + 2) * 41 + kk + 1];
          if (i + 3 < 27)
            av1[3] = A[(i + 3) * 41 + kk + 1];
        }

        for (reg c = 0; c < 4; ++c)
        {
          if (j + c < 27)
          {
            reg b0 = B[kk * 27 + j + c]; /* 第 kk 个 k 的 B 行 */
            acc[0][c] += av0[0] * b0;
            acc[1][c] += av0[1] * b0;
            acc[2][c] += av0[2] * b0;
            acc[3][c] += av0[3] * b0;
            if (kk + 1 < 41)
            {
              b0 = B[(kk + 1) * 27 + j + c]; /* 第 kk+1 个 k 的 B 行 */
              acc[0][c] += av1[0] * b0;
              acc[1][c] += av1[1] * b0;
              acc[2][c] += av1[2] * b0;
              acc[3][c] += av1[3] * b0;
            }
          }
        }
      }

      for (reg u = 0; u < 4; ++u) /* 每个 C 元素只写一次 */
        for (reg v = 0; v < 4; ++v)
          if (i + u < 27 && j + v < 27)
            C[(i + u) * 27 + j + v] = acc[u][v];
    }
  }
}
