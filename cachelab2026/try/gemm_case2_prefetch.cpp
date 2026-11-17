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

      for (reg kk = 0; kk < 8; ++kk) /* 每次取 2 个 k：2kk 和 2kk+1 */
      {
        reg av0[4], av1[4]; /* 这两列的 A 全部装进来 */
        av0[0] = A[i * 64 + kk * 2];
        av0[1] = A[i * 64 + 16 + kk * 2];
        av0[2] = A[i * 64 + 32 + kk * 2];
        av0[3] = A[i * 64 + 48 + kk * 2];
        av1[0] = A[i * 64 + kk * 2 + 1];
        av1[1] = A[i * 64 + 16 + kk * 2 + 1];
        av1[2] = A[i * 64 + 32 + kk * 2 + 1];
        av1[3] = A[i * 64 + 48 + kk * 2 + 1];

        for (reg c = 0; c < 4; ++c)
        {
          reg b0 = B[kk * 32 + j * 4 + c]; /* 第 2kk 个 k 的 B 行 */
          acc[0][c] += av0[0] * b0;
          acc[1][c] += av0[1] * b0;
          acc[2][c] += av0[2] * b0;
          acc[3][c] += av0[3] * b0;
          b0 = B[kk * 32 + 16 + j * 4 + c]; /* 第 2kk+1 个 k 的 B 行 */
          acc[0][c] += av1[0] * b0;
          acc[1][c] += av1[1] * b0;
          acc[2][c] += av1[2] * b0;
          acc[3][c] += av1[3] * b0;
        }
      }

      for (reg u = 0; u < 4; ++u) /* 每个 C 元素只写一次 */
        for (reg v = 0; v < 4; ++v)
          C[i * 64 + u * 16 + j * 4 + v] = acc[u][v];


		}
  }
}

/* case2：32x32x32 -- 4x4 分块；行 0,1 的 A 值跨轮预取（行 2,3 正常读）*/
void gemm_case2(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 8; ++i)
  {
    for (reg j = 0; j < 8; ++j)
    {
      reg acc[4][4];
      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          acc[u][v] = 0;

      reg cur0[2], cur1[2]; /* 行 0,1：本轮两个 k 的值（上一轮预取的）*/
      cur0[0] = A[i * 128];
      cur0[1] = A[i * 128 + 1];
      cur1[0] = A[i * 128 + 32];
      cur1[1] = A[i * 128 + 33];

      for (reg kk = 0; kk < 16; ++kk)
      {
        reg av0[2], av1[2]; /* 行 2,3：本轮现读 */
        av0[0] = A[i * 128 + 64 + kk * 2];
        av0[1] = A[i * 128 + 96 + kk * 2];
        av1[0] = A[i * 128 + 64 + kk * 2 + 1];
        av1[1] = A[i * 128 + 96 + kk * 2 + 1];

        reg b0;
        reg n0[2], n1[2]; /* 先趁行还在 cache 里，预取下一轮行 0,1 */
        if (kk + 1 < 16)
        {
          n0[0] = A[i * 128 + (kk + 1) * 2];
          n0[1] = A[i * 128 + (kk + 1) * 2 + 1];
          n1[0] = A[i * 128 + 32 + (kk + 1) * 2];
          n1[1] = A[i * 128 + 32 + (kk + 1) * 2 + 1];
        }

          b0 = B[kk * 64 + j * 4 + 0];
          acc[0][0] += cur0[0] * b0;
          acc[1][0] += cur1[0] * b0;
          acc[2][0] += av0[0] * b0;
          acc[3][0] += av0[1] * b0;
          b0 = B[kk * 64 + 32 + j * 4 + 0];
          acc[0][0] += cur0[1] * b0;
          acc[1][0] += cur1[1] * b0;
          acc[2][0] += av1[0] * b0;
          acc[3][0] += av1[1] * b0;
          b0 = B[kk * 64 + j * 4 + 1];
          acc[0][1] += cur0[0] * b0;
          acc[1][1] += cur1[0] * b0;
          acc[2][1] += av0[0] * b0;
          acc[3][1] += av0[1] * b0;
          b0 = B[kk * 64 + 32 + j * 4 + 1];
          acc[0][1] += cur0[1] * b0;
          acc[1][1] += cur1[1] * b0;
          acc[2][1] += av1[0] * b0;
          acc[3][1] += av1[1] * b0;
          b0 = B[kk * 64 + j * 4 + 2];
          acc[0][2] += cur0[0] * b0;
          acc[1][2] += cur1[0] * b0;
          acc[2][2] += av0[0] * b0;
          acc[3][2] += av0[1] * b0;
          b0 = B[kk * 64 + 32 + j * 4 + 2];
          acc[0][2] += cur0[1] * b0;
          acc[1][2] += cur1[1] * b0;
          acc[2][2] += av1[0] * b0;
          acc[3][2] += av1[1] * b0;
          b0 = B[kk * 64 + j * 4 + 3];
          acc[0][3] += cur0[0] * b0;
          acc[1][3] += cur1[0] * b0;
          acc[2][3] += av0[0] * b0;
          acc[3][3] += av0[1] * b0;
          b0 = B[kk * 64 + 32 + j * 4 + 3];
          acc[0][3] += cur0[1] * b0;
          acc[1][3] += cur1[1] * b0;
          acc[2][3] += av1[0] * b0;
          acc[3][3] += av1[1] * b0;

        cur0[0] = n0[0]; /* 换到下一轮 */
        cur0[1] = n0[1];
        cur1[0] = n1[0];
        cur1[1] = n1[1];
      }

      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          C[i * 128 + u * 32 + j * 4 + v] = acc[u][v];
    }
  }
}

/* case3：27x41x27 -- C 用 4x5 分块（4 行 x 5 列），每轮 1 个 k
 * 27 既不是 4 的倍数也不是 5 的倍数，行/列/深度都要越界判断（判断不产生内存访问）。
 * 分块形状扫过 2x2 ~ 8x2 共 22 种：4x5 最快（5519/15120 = 6.27x），
 * 受 36 个寄存器限制，累加器 + av 的组合再大就抛 OutOfRegistersException。
 */
void gemm_case3(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 27; i += 4) /* C 的块行：4 行一块 */
  {
    for (reg j = 0; j < 27; j += 5) /* C 的块列：5 列一块 */
    {
      reg acc[4][5]; /* 20 个累加寄存器 */
      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 5; ++v)
          acc[u][v] = 0;

      for (reg k = 0; k < 41; ++k) /* 每轮 1 个 k */
      {
        reg av[4]; /* A 的一列：4 行 */
        for (reg r = 0; r < 4; ++r)
          if (i + r < 27) av[r] = A[(i + r) * 41 + k];

        for (reg c = 0; c < 5; ++c) /* B 的一行：5 列 */
        {
          if (j + c < 27)
          {
            reg b0 = B[k * 27 + j + c];
            for (reg r = 0; r < 4; ++r)
              if (i + r < 27) acc[r][c] += av[r] * b0;
          }
        }
      }

      for (reg u = 0; u < 4; ++u) /* 每个 C 元素只写一次 */
        for (reg v = 0; v < 5; ++v)
          if (i + u < 27 && j + v < 27)
            C[(i + u) * 27 + j + v] = acc[u][v];
    }
  }
}
