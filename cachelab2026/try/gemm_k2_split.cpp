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
 * 每个 k 花 4 条 load 取 A 的一列，再用 4 条 load 取 B 的一行喂 16 次乘加。
 * 低寄存器写法：k/t 合成一层，bv[4] 换成循环内单个 b。
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
        reg av0[4], av1[4]; /* 先把这两列的 A 全部装进来（各 4 条 cache 行，两列同 4 条） */
        av0[0] = A[i * 64 + kk * 2];
        av0[1] = A[i * 64 + 16 + kk * 2];
        av0[2] = A[i * 64 + 32 + kk * 2];
        av0[3] = A[i * 64 + 48 + kk * 2];
        av1[0] = A[i * 64 + kk * 2 + 1];
        av1[1] = A[i * 64 + 16 + kk * 2 + 1];
        av1[2] = A[i * 64 + 32 + kk * 2 + 1];
        av1[3] = A[i * 64 + 48 + kk * 2 + 1];

        for (reg c = 0; c < 4; ++c) /* 先算 acc[0] 和 acc[1] */
        {
          reg b0 = B[kk * 32 + j * 4 + c]; /* 第 2kk 个 k 的 B 行 */
          acc[0][c] += av0[0] * b0;
          acc[1][c] += av0[1] * b0;
        }
        for (reg c = 0; c < 4; ++c)
        {
          reg b1 = B[kk * 32 + 16 + j * 4 + c]; /* 第 2kk+1 个 k 的 B 行 */
          acc[0][c] += av1[0] * b1;
          acc[1][c] += av1[1] * b1;
        }

        for (reg c = 0; c < 4; ++c) /* 再算 acc[2] 和 acc[3] */
        {
          reg b0 = B[kk * 32 + j * 4 + c];
          acc[2][c] += av0[2] * b0;
          acc[3][c] += av0[3] * b0;
        }
        for (reg c = 0; c < 4; ++c)
        {
          reg b1 = B[kk * 32 + 16 + j * 4 + c];
          acc[2][c] += av1[2] * b1;
          acc[3][c] += av1[3] * b1;
        }
      }

      for (reg u = 0; u < 4; ++u) /* 每个 C 元素只写一次 */
        for (reg v = 0; v < 4; ++v)
          C[i * 64 + u * 16 + j * 4 + v] = acc[u][v];
    }
  }
}

/* case2：32x32x32，4x4 分块，16 个累加寄存器 */
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

      reg abase = i * 128;
      reg bbase = j * 4;

      for (reg k = 0; k < 32; ++k)
      {
        reg av[4];
        av[0] = A[abase + k];
        av[1] = A[abase + 32 + k];
        av[2] = A[abase + 64 + k];
        av[3] = A[abase + 96 + k];

        for (reg c = 0; c < 4; ++c)
        {
          reg b = B[k * 32 + bbase + c];
          acc[0][c] += av[0] * b;
          acc[1][c] += av[1] * b;
          acc[2][c] += av[2] * b;
          acc[3][c] += av[3] * b;
        }
      }

      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          C[abase + u * 32 + bbase + v] = acc[u][v];
    }
  }
}

/* case3：27x41x27，暂未优化 */
void gemm_case3(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < case3_m; ++i)
  {
    for (reg j = 0; j < case3_p; ++j)
    {
      reg tmpc = 0;
      for (reg k = 0; k < case3_n; ++k)
      {
        reg tmpa = A[i * case3_n + k];
        reg tmpb = B[k * case3_p + j];
        tmpc += tmpa * tmpb;
      }
      C[i * case3_p + j] = tmpc;
    }
  }
}
