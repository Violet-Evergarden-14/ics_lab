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

/* case1：16x16x16 -- 4x4 分块、每轮 2 个 k；行 0,1 的 A 值跨轮预取
 *（kk 偶数轮预取到的下一轮和本轮同一条 cache 行，所以能命中）
 */
void gemm_case1(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 4; ++i)
  {
    for (reg j = 0; j < 4; ++j)
    {
      reg acc[4][4];
      for (reg u = 0; u < 4; ++u)
        for (reg v = 0; v < 4; ++v)
          acc[u][v] = 0;

      reg cur0[2], cur1[2]; /* 行 0,1 两个 k 的值（上一轮末尾预取） */
      cur0[0] = A[i * 64];
      cur0[1] = A[i * 64 + 1];
      cur1[0] = A[i * 64 + 16];
      cur1[1] = A[i * 64 + 17];

      for (reg kk = 0; kk < 8; ++kk)
      {
        reg av0[2], av1[2]; /* 行 2,3 本轮现读 */
        av0[0] = A[i * 64 + 32 + kk * 2];
        av0[1] = A[i * 64 + 48 + kk * 2];
        av1[0] = A[i * 64 + 32 + kk * 2 + 1];
        av1[1] = A[i * 64 + 48 + kk * 2 + 1];

        reg b0;
        reg n0[2], n1[2]; /* 趁行还在 cache 里，预取下一轮行 0,1 */
        if (kk + 1 < 8)
        {
          n0[0] = A[i * 64 + (kk + 1) * 2];
          n0[1] = A[i * 64 + (kk + 1) * 2 + 1];
          n1[0] = A[i * 64 + 16 + (kk + 1) * 2];
          n1[1] = A[i * 64 + 16 + (kk + 1) * 2 + 1];
        }

          b0 = B[kk * 32 + j * 4 + 0];
          acc[0][0] += cur0[0] * b0;
          acc[1][0] += cur1[0] * b0;
          acc[2][0] += av0[0] * b0;
          acc[3][0] += av0[1] * b0;
          b0 = B[kk * 32 + 16 + j * 4 + 0];
          acc[0][0] += cur0[1] * b0;
          acc[1][0] += cur1[1] * b0;
          acc[2][0] += av1[0] * b0;
          acc[3][0] += av1[1] * b0;
          b0 = B[kk * 32 + j * 4 + 1];
          acc[0][1] += cur0[0] * b0;
          acc[1][1] += cur1[0] * b0;
          acc[2][1] += av0[0] * b0;
          acc[3][1] += av0[1] * b0;
          b0 = B[kk * 32 + 16 + j * 4 + 1];
          acc[0][1] += cur0[1] * b0;
          acc[1][1] += cur1[1] * b0;
          acc[2][1] += av1[0] * b0;
          acc[3][1] += av1[1] * b0;
          b0 = B[kk * 32 + j * 4 + 2];
          acc[0][2] += cur0[0] * b0;
          acc[1][2] += cur1[0] * b0;
          acc[2][2] += av0[0] * b0;
          acc[3][2] += av0[1] * b0;
          b0 = B[kk * 32 + 16 + j * 4 + 2];
          acc[0][2] += cur0[1] * b0;
          acc[1][2] += cur1[1] * b0;
          acc[2][2] += av1[0] * b0;
          acc[3][2] += av1[1] * b0;
          b0 = B[kk * 32 + j * 4 + 3];
          acc[0][3] += cur0[0] * b0;
          acc[1][3] += cur1[0] * b0;
          acc[2][3] += av0[0] * b0;
          acc[3][3] += av0[1] * b0;
          b0 = B[kk * 32 + 16 + j * 4 + 3];
          acc[0][3] += cur0[1] * b0;
          acc[1][3] += cur1[1] * b0;
          acc[2][3] += av1[0] * b0;
          acc[3][3] += av1[1] * b0;

        cur0[0] = n0[0];
        cur0[1] = n0[1];
        cur1[0] = n1[0];
        cur1[1] = n1[1];
      }

      for (reg u = 0; u < 4; ++u)
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

/* case3：27x41x27 -- C 用 4x6 分块，每轮 1 个 k，内层全展开 */
void gemm_case3(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < 27; i += 4)
  {
    for (reg j = 0; j < 27; j += 6)
    {
      reg acc[4][6];
        acc[0][0] = 0;
        acc[0][1] = 0;
        acc[0][2] = 0;
        acc[0][3] = 0;
        acc[0][4] = 0;
        acc[0][5] = 0;
        acc[1][0] = 0;
        acc[1][1] = 0;
        acc[1][2] = 0;
        acc[1][3] = 0;
        acc[1][4] = 0;
        acc[1][5] = 0;
        acc[2][0] = 0;
        acc[2][1] = 0;
        acc[2][2] = 0;
        acc[2][3] = 0;
        acc[2][4] = 0;
        acc[2][5] = 0;
        acc[3][0] = 0;
        acc[3][1] = 0;
        acc[3][2] = 0;
        acc[3][3] = 0;
        acc[3][4] = 0;
        acc[3][5] = 0;

      for (reg k = 0; k < 41; ++k)
      {
        reg av[4];
        if (i + 0 < 27) av[0] = A[(i + 0) * 41 + k];
        if (i + 1 < 27) av[1] = A[(i + 1) * 41 + k];
        if (i + 2 < 27) av[2] = A[(i + 2) * 41 + k];
        if (i + 3 < 27) av[3] = A[(i + 3) * 41 + k];

          if (j + 0 < 27)
          {
            reg b0 = B[k * 27 + j + 0];
            acc[0][0] += av[0] * b0;
            acc[1][0] += av[1] * b0;
            acc[2][0] += av[2] * b0;
            acc[3][0] += av[3] * b0;
          }
          if (j + 1 < 27)
          {
            reg b0 = B[k * 27 + j + 1];
            acc[0][1] += av[0] * b0;
            acc[1][1] += av[1] * b0;
            acc[2][1] += av[2] * b0;
            acc[3][1] += av[3] * b0;
          }
          if (j + 2 < 27)
          {
            reg b0 = B[k * 27 + j + 2];
            acc[0][2] += av[0] * b0;
            acc[1][2] += av[1] * b0;
            acc[2][2] += av[2] * b0;
            acc[3][2] += av[3] * b0;
          }
          if (j + 3 < 27)
          {
            reg b0 = B[k * 27 + j + 3];
            acc[0][3] += av[0] * b0;
            acc[1][3] += av[1] * b0;
            acc[2][3] += av[2] * b0;
            acc[3][3] += av[3] * b0;
          }
          if (j + 4 < 27)
          {
            reg b0 = B[k * 27 + j + 4];
            acc[0][4] += av[0] * b0;
            acc[1][4] += av[1] * b0;
            acc[2][4] += av[2] * b0;
            acc[3][4] += av[3] * b0;
          }
          if (j + 5 < 27)
          {
            reg b0 = B[k * 27 + j + 5];
            acc[0][5] += av[0] * b0;
            acc[1][5] += av[1] * b0;
            acc[2][5] += av[2] * b0;
            acc[3][5] += av[3] * b0;
          }
      }

          if (i + 0 < 27 && j + 0 < 27) C[(i + 0) * 27 + j + 0] = acc[0][0];
          if (i + 0 < 27 && j + 1 < 27) C[(i + 0) * 27 + j + 1] = acc[0][1];
          if (i + 0 < 27 && j + 2 < 27) C[(i + 0) * 27 + j + 2] = acc[0][2];
          if (i + 0 < 27 && j + 3 < 27) C[(i + 0) * 27 + j + 3] = acc[0][3];
          if (i + 0 < 27 && j + 4 < 27) C[(i + 0) * 27 + j + 4] = acc[0][4];
          if (i + 0 < 27 && j + 5 < 27) C[(i + 0) * 27 + j + 5] = acc[0][5];
          if (i + 1 < 27 && j + 0 < 27) C[(i + 1) * 27 + j + 0] = acc[1][0];
          if (i + 1 < 27 && j + 1 < 27) C[(i + 1) * 27 + j + 1] = acc[1][1];
          if (i + 1 < 27 && j + 2 < 27) C[(i + 1) * 27 + j + 2] = acc[1][2];
          if (i + 1 < 27 && j + 3 < 27) C[(i + 1) * 27 + j + 3] = acc[1][3];
          if (i + 1 < 27 && j + 4 < 27) C[(i + 1) * 27 + j + 4] = acc[1][4];
          if (i + 1 < 27 && j + 5 < 27) C[(i + 1) * 27 + j + 5] = acc[1][5];
          if (i + 2 < 27 && j + 0 < 27) C[(i + 2) * 27 + j + 0] = acc[2][0];
          if (i + 2 < 27 && j + 1 < 27) C[(i + 2) * 27 + j + 1] = acc[2][1];
          if (i + 2 < 27 && j + 2 < 27) C[(i + 2) * 27 + j + 2] = acc[2][2];
          if (i + 2 < 27 && j + 3 < 27) C[(i + 2) * 27 + j + 3] = acc[2][3];
          if (i + 2 < 27 && j + 4 < 27) C[(i + 2) * 27 + j + 4] = acc[2][4];
          if (i + 2 < 27 && j + 5 < 27) C[(i + 2) * 27 + j + 5] = acc[2][5];
          if (i + 3 < 27 && j + 0 < 27) C[(i + 3) * 27 + j + 0] = acc[3][0];
          if (i + 3 < 27 && j + 1 < 27) C[(i + 3) * 27 + j + 1] = acc[3][1];
          if (i + 3 < 27 && j + 2 < 27) C[(i + 3) * 27 + j + 2] = acc[3][2];
          if (i + 3 < 27 && j + 3 < 27) C[(i + 3) * 27 + j + 3] = acc[3][3];
          if (i + 3 < 27 && j + 4 < 27) C[(i + 3) * 27 + j + 4] = acc[3][4];
          if (i + 3 < 27 && j + 5 < 27) C[(i + 3) * 27 + j + 5] = acc[3][5];
    }
  }
}
