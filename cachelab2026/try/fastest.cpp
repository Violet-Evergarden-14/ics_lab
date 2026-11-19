// 写了10版，真写不动了，后面让AI根据我的思路写的
// 尽管自己想的再多也没有AI随便想想快罢了...(这个是独立用另外一个AGENT写的，跟该文件无关)
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

/* case1：16x16x16 -- 4x4 分块、每轮 2 个 k、行 0,1 预取；k 方向蛇形 */
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

      if ((i + j) % 2 == 0)
      {
        reg cur0[2], cur1[2];
        cur0[0] = A[i * 64];      cur0[1] = A[i * 64 + 1];
        cur1[0] = A[i * 64 + 16]; cur1[1] = A[i * 64 + 17];
        for (reg kk = 0; kk < 8; ++kk)
        {
        reg av0[2], av1[2];
        av0[0] = A[i * 64 + 32 + kk * 2];
        av0[1] = A[i * 64 + 48 + kk * 2];
        av1[0] = A[i * 64 + 32 + kk * 2 + 1];
        av1[1] = A[i * 64 + 48 + kk * 2 + 1];

        reg b0;
        reg n0[2], n1[2];
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

        cur0[0] = n0[0]; cur0[1] = n0[1];
        cur1[0] = n1[0]; cur1[1] = n1[1];
        }
      }
      else
      {
        reg cur0[2], cur1[2];
        cur0[0] = A[i * 64 + 14];      cur0[1] = A[i * 64 + 15];
        cur1[0] = A[i * 64 + 16 + 14]; cur1[1] = A[i * 64 + 16 + 15];
        for (reg kk = 7; kk >= 0; --kk)
        {
        reg av0[2], av1[2];
        av0[0] = A[i * 64 + 32 + kk * 2];
        av0[1] = A[i * 64 + 48 + kk * 2];
        av1[0] = A[i * 64 + 32 + kk * 2 + 1];
        av1[1] = A[i * 64 + 48 + kk * 2 + 1];

        reg b0;
        reg n0[2], n1[2];
        if (kk > 0)
        {
          n0[0] = A[i * 64 + (kk - 1) * 2];
          n0[1] = A[i * 64 + (kk - 1) * 2 + 1];
          n1[0] = A[i * 64 + 16 + (kk - 1) * 2];
          n1[1] = A[i * 64 + 16 + (kk - 1) * 2 + 1];
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

        cur0[0] = n0[0]; cur0[1] = n0[1];
        cur1[0] = n1[0]; cur1[1] = n1[1];
        }
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

/* case3：27x41x27 -- C 用 4x6 分块；j 块号为偶数时 k 正着走，奇数时倒着走（蛇形） */
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

      if ((i / 4 + j / 6) % 2 == 0)
      {
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
            if (i + 0 < 27) acc[0][0] += av[0] * b0;
            if (i + 1 < 27) acc[1][0] += av[1] * b0;
            if (i + 2 < 27) acc[2][0] += av[2] * b0;
            if (i + 3 < 27) acc[3][0] += av[3] * b0;
          }
          if (j + 1 < 27)
          {
            reg b0 = B[k * 27 + j + 1];
            if (i + 0 < 27) acc[0][1] += av[0] * b0;
            if (i + 1 < 27) acc[1][1] += av[1] * b0;
            if (i + 2 < 27) acc[2][1] += av[2] * b0;
            if (i + 3 < 27) acc[3][1] += av[3] * b0;
          }
          if (j + 2 < 27)
          {
            reg b0 = B[k * 27 + j + 2];
            if (i + 0 < 27) acc[0][2] += av[0] * b0;
            if (i + 1 < 27) acc[1][2] += av[1] * b0;
            if (i + 2 < 27) acc[2][2] += av[2] * b0;
            if (i + 3 < 27) acc[3][2] += av[3] * b0;
          }
          if (j + 3 < 27)
          {
            reg b0 = B[k * 27 + j + 3];
            if (i + 0 < 27) acc[0][3] += av[0] * b0;
            if (i + 1 < 27) acc[1][3] += av[1] * b0;
            if (i + 2 < 27) acc[2][3] += av[2] * b0;
            if (i + 3 < 27) acc[3][3] += av[3] * b0;
          }
          if (j + 4 < 27)
          {
            reg b0 = B[k * 27 + j + 4];
            if (i + 0 < 27) acc[0][4] += av[0] * b0;
            if (i + 1 < 27) acc[1][4] += av[1] * b0;
            if (i + 2 < 27) acc[2][4] += av[2] * b0;
            if (i + 3 < 27) acc[3][4] += av[3] * b0;
          }
          if (j + 5 < 27)
          {
            reg b0 = B[k * 27 + j + 5];
            if (i + 0 < 27) acc[0][5] += av[0] * b0;
            if (i + 1 < 27) acc[1][5] += av[1] * b0;
            if (i + 2 < 27) acc[2][5] += av[2] * b0;
            if (i + 3 < 27) acc[3][5] += av[3] * b0;
          }
        }
      }
      else
      {
        for (reg k = 40; k >= 0; --k)
        {
        reg av[4];
        if (i + 0 < 27) av[0] = A[(i + 0) * 41 + k];
        if (i + 1 < 27) av[1] = A[(i + 1) * 41 + k];
        if (i + 2 < 27) av[2] = A[(i + 2) * 41 + k];
        if (i + 3 < 27) av[3] = A[(i + 3) * 41 + k];

          if (j + 0 < 27)
          {
            reg b0 = B[k * 27 + j + 0];
            if (i + 0 < 27) acc[0][0] += av[0] * b0;
            if (i + 1 < 27) acc[1][0] += av[1] * b0;
            if (i + 2 < 27) acc[2][0] += av[2] * b0;
            if (i + 3 < 27) acc[3][0] += av[3] * b0;
          }
          if (j + 1 < 27)
          {
            reg b0 = B[k * 27 + j + 1];
            if (i + 0 < 27) acc[0][1] += av[0] * b0;
            if (i + 1 < 27) acc[1][1] += av[1] * b0;
            if (i + 2 < 27) acc[2][1] += av[2] * b0;
            if (i + 3 < 27) acc[3][1] += av[3] * b0;
          }
          if (j + 2 < 27)
          {
            reg b0 = B[k * 27 + j + 2];
            if (i + 0 < 27) acc[0][2] += av[0] * b0;
            if (i + 1 < 27) acc[1][2] += av[1] * b0;
            if (i + 2 < 27) acc[2][2] += av[2] * b0;
            if (i + 3 < 27) acc[3][2] += av[3] * b0;
          }
          if (j + 3 < 27)
          {
            reg b0 = B[k * 27 + j + 3];
            if (i + 0 < 27) acc[0][3] += av[0] * b0;
            if (i + 1 < 27) acc[1][3] += av[1] * b0;
            if (i + 2 < 27) acc[2][3] += av[2] * b0;
            if (i + 3 < 27) acc[3][3] += av[3] * b0;
          }
          if (j + 4 < 27)
          {
            reg b0 = B[k * 27 + j + 4];
            if (i + 0 < 27) acc[0][4] += av[0] * b0;
            if (i + 1 < 27) acc[1][4] += av[1] * b0;
            if (i + 2 < 27) acc[2][4] += av[2] * b0;
            if (i + 3 < 27) acc[3][4] += av[3] * b0;
          }
          if (j + 5 < 27)
          {
            reg b0 = B[k * 27 + j + 5];
            if (i + 0 < 27) acc[0][5] += av[0] * b0;
            if (i + 1 < 27) acc[1][5] += av[1] * b0;
            if (i + 2 < 27) acc[2][5] += av[2] * b0;
            if (i + 3 < 27) acc[3][5] += av[3] * b0;
          }
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


/*
请注意，你的代码不能出现任何 int/short/char/float/double/auto 等局部变量/函数传参，我们仅允许使用 reg 定义的寄存器变量。
其中 reg 等价于一个 int。

你不能自己申请额外的内存，即不能使用 new/malloc，作为补偿我们传入了一段 buffer，大小为 BUFFER_SIZE = 64，你可以视情况使用。

我们的数组按照 A, B, C, buffer 的顺序在内存上连续紧密排列，且 &A = 0x30000000（这是模拟的设定，不是 A 的真实地址）

如果你需要以更自由的方式访问内存，你可以以相对 A 的方式访问，比如 A[100]，用 *(0x30000000) 是无法访问到的。

如果你有定义常量的需求（更严谨的说法是，你想定义的是汇编层面的立即数，不应该占用寄存器），请参考下面这种方式使用宏定义来完成。
*/

#include "cachelab.h"

/*
 * Part B: C = A * B
 *
 * 思路概要
 * --------
 * 硬件为 s=5, E=1, b=4 的直接映射 cache（32 组，每组 1 行，每行 4 个 int），
 * 一次内存访问 15 个时间单位，一次寄存器 <-> cache 访问 1 个时间单位。
 * 由于 A, B, C 三块数据按 A、B、C、buffer 的顺序连续紧排，三者的行地址
 * 在 set 空间上完全同余（case1/case2 的矩阵大小都是 128 的倍数），因此
 * 冲突缺失非常严重，必须同时做两级优化：
 *
 *  1. 寄存器级分块：每个线程块在寄存器中维持一个 TR x TC 的 C 累加器，
 *     把 k 维乘加完全在寄存器里完成，从而把每个输出元素的写回次数降为 1，
 *     并让每个 A/B 元素被 TR / TC 次复用。
 *  2. cache 级分块与访问顺序设计：k 维按 cache 行（4 个 int）分组，并按
 *     瓦片位置轮转 k 组顺序，使相邻瓦片留下的 A 行错开，避免 A 行与 B 行
 *     在同一个 set 上反复互相驱逐。
 *
 * 所有函数都以 A 为基准指针，用编译期常量偏移访问 B、C（三块内存连续），
 * 这样可以释放掉用不到的指针参数寄存器（参数本身就是寄存器），把寄存器
 * 预算全部留给累加器。
 */

#define OFF_B (m * n)
#define OFF_C (m * n + n * p)

/* 释放三个用不到的指针参数所占的寄存器。 */
#define RELEASE_UNUSED_POINTERS()                   \
  {                                                 \
    [[maybe_unused]] ptr_reg released_B =           \
        std::move(B);                               \
    [[maybe_unused]] ptr_reg released_C =           \
        std::move(C);                               \
    [[maybe_unused]] ptr_reg released_buffer =      \
        std::move(buffer);                          \
  }

#define m case0_m
#define n case0_n
#define p case0_p

// 2*2*2 的矩阵乘法，框架自带的演示版本。
void gemm_case0(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  for (reg i = 0; i < m; ++i)
  {
    for (reg j = 0; j < p; ++j)
    {
      reg tmpc = 0;
      for (reg k = 0; k < n; ++k)
      {
        reg tmpa = A[i * n + k];
        reg tmpb = B[k * p + j];
        tmpc += tmpa * tmpb;
      }
      C[i * p + j] = tmpc;
    }
  }
}

#undef m
#undef n
#undef p

/* ============================ case 1: 16x16x16 ============================ */
#define m case1_m
#define n case1_n
#define p case1_p

/* 寄存器瓦片 6 x 4。
 * 减去其余参数后剩 35 个寄存器：24 个累加器 + 6 个 A 值 + 1 个 B 值 +
 * 3 个循环下标 + 1 个基址指针。 */
#define TR1 6
#define TC1 4

void gemm_case1(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  RELEASE_UNUSED_POINTERS();

  for (reg i0 = 0; i0 < m; i0 += TR1)
  {
    for (reg j0 = 0; j0 < p; j0 += TC1)
    {
      reg acc[TR1][TC1];

      for (reg k = 0; k < n; ++k)
      {
        /* k 维按 (k + j0) % n 轮转：等价于按 j 瓦片的序号轮转 4 个一组的
         * cache 行，使不同 j 瓦片之间残留的 A 行错开。 */
        reg a[TR1];
        if (i0 < m)
          a[0] = A[(i0 + 0) * n + (k + j0) % n];
        if (i0 + 1 < m)
          a[1] = A[(i0 + 1) * n + (k + j0) % n];
        if (i0 + 2 < m)
          a[2] = A[(i0 + 2) * n + (k + j0) % n];
        if (i0 + 3 < m)
          a[3] = A[(i0 + 3) * n + (k + j0) % n];
        if (i0 + 4 < m)
          a[4] = A[(i0 + 4) * n + (k + j0) % n];
        if (i0 + 5 < m)
          a[5] = A[(i0 + 5) * n + (k + j0) % n];

        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0];
          acc[0][0] += a[0] * b;
          acc[1][0] += a[1] * b;
          acc[2][0] += a[2] * b;
          acc[3][0] += a[3] * b;
          acc[4][0] += a[4] * b;
          acc[5][0] += a[5] * b;
        }
        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0 + 1];
          acc[0][1] += a[0] * b;
          acc[1][1] += a[1] * b;
          acc[2][1] += a[2] * b;
          acc[3][1] += a[3] * b;
          acc[4][1] += a[4] * b;
          acc[5][1] += a[5] * b;
        }
        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0 + 2];
          acc[0][2] += a[0] * b;
          acc[1][2] += a[1] * b;
          acc[2][2] += a[2] * b;
          acc[3][2] += a[3] * b;
          acc[4][2] += a[4] * b;
          acc[5][2] += a[5] * b;
        }
        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0 + 3];
          acc[0][3] += a[0] * b;
          acc[1][3] += a[1] * b;
          acc[2][3] += a[2] * b;
          acc[3][3] += a[3] * b;
          acc[4][3] += a[4] * b;
          acc[5][3] += a[5] * b;
        }
      }

      if (i0 < m)
      {
        A[OFF_C + (i0 + 0) * p + j0 + 0] = acc[0][0];
        A[OFF_C + (i0 + 0) * p + j0 + 1] = acc[0][1];
        A[OFF_C + (i0 + 0) * p + j0 + 2] = acc[0][2];
        A[OFF_C + (i0 + 0) * p + j0 + 3] = acc[0][3];
      }
      if (i0 + 1 < m)
      {
        A[OFF_C + (i0 + 1) * p + j0 + 0] = acc[1][0];
        A[OFF_C + (i0 + 1) * p + j0 + 1] = acc[1][1];
        A[OFF_C + (i0 + 1) * p + j0 + 2] = acc[1][2];
        A[OFF_C + (i0 + 1) * p + j0 + 3] = acc[1][3];
      }
      if (i0 + 2 < m)
      {
        A[OFF_C + (i0 + 2) * p + j0 + 0] = acc[2][0];
        A[OFF_C + (i0 + 2) * p + j0 + 1] = acc[2][1];
        A[OFF_C + (i0 + 2) * p + j0 + 2] = acc[2][2];
        A[OFF_C + (i0 + 2) * p + j0 + 3] = acc[2][3];
      }
      if (i0 + 3 < m)
      {
        A[OFF_C + (i0 + 3) * p + j0 + 0] = acc[3][0];
        A[OFF_C + (i0 + 3) * p + j0 + 1] = acc[3][1];
        A[OFF_C + (i0 + 3) * p + j0 + 2] = acc[3][2];
        A[OFF_C + (i0 + 3) * p + j0 + 3] = acc[3][3];
      }
      if (i0 + 4 < m)
      {
        A[OFF_C + (i0 + 4) * p + j0 + 0] = acc[4][0];
        A[OFF_C + (i0 + 4) * p + j0 + 1] = acc[4][1];
        A[OFF_C + (i0 + 4) * p + j0 + 2] = acc[4][2];
        A[OFF_C + (i0 + 4) * p + j0 + 3] = acc[4][3];
      }
      if (i0 + 5 < m)
      {
        A[OFF_C + (i0 + 5) * p + j0 + 0] = acc[5][0];
        A[OFF_C + (i0 + 5) * p + j0 + 1] = acc[5][1];
        A[OFF_C + (i0 + 5) * p + j0 + 2] = acc[5][2];
        A[OFF_C + (i0 + 5) * p + j0 + 3] = acc[5][3];
      }
    }
  }
}

#undef TR1
#undef TC1
#undef m
#undef n
#undef p

/* ============================ case 2: 32x32x32 ============================ */
#define m case2_m
#define n case2_n
#define p case2_p

/* 寄存器瓦片 4 x 4：
 * 16 个累加器 + 4 个 A 值 + 1 个 B 值 + 3 个循环下标 + 1 个基址指针。 */
#define TR2 4
#define TC2 4

void gemm_case2(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  RELEASE_UNUSED_POINTERS();

  for (reg i0 = 0; i0 < m; i0 += TR2)
  {
    for (reg j0 = 0; j0 < p; j0 += TC2)
    {
      reg acc[TR2][TC2];

      for (reg k = 0; k < n; ++k)
      {
        reg a[TR2];
        a[0] = A[(i0 + 0) * n + (k + j0) % n];
        a[1] = A[(i0 + 1) * n + (k + j0) % n];
        a[2] = A[(i0 + 2) * n + (k + j0) % n];
        a[3] = A[(i0 + 3) * n + (k + j0) % n];

        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0];
          acc[0][0] += a[0] * b;
          acc[1][0] += a[1] * b;
          acc[2][0] += a[2] * b;
          acc[3][0] += a[3] * b;
        }
        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0 + 1];
          acc[0][1] += a[0] * b;
          acc[1][1] += a[1] * b;
          acc[2][1] += a[2] * b;
          acc[3][1] += a[3] * b;
        }
        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0 + 2];
          acc[0][2] += a[0] * b;
          acc[1][2] += a[1] * b;
          acc[2][2] += a[2] * b;
          acc[3][2] += a[3] * b;
        }
        {
          reg b = A[OFF_B + ((k + j0) % n) * p + j0 + 3];
          acc[0][3] += a[0] * b;
          acc[1][3] += a[1] * b;
          acc[2][3] += a[2] * b;
          acc[3][3] += a[3] * b;
        }
      }

      A[OFF_C + (i0 + 0) * p + j0 + 0] = acc[0][0];
      A[OFF_C + (i0 + 0) * p + j0 + 1] = acc[0][1];
      A[OFF_C + (i0 + 0) * p + j0 + 2] = acc[0][2];
      A[OFF_C + (i0 + 0) * p + j0 + 3] = acc[0][3];
      A[OFF_C + (i0 + 1) * p + j0 + 0] = acc[1][0];
      A[OFF_C + (i0 + 1) * p + j0 + 1] = acc[1][1];
      A[OFF_C + (i0 + 1) * p + j0 + 2] = acc[1][2];
      A[OFF_C + (i0 + 1) * p + j0 + 3] = acc[1][3];
      A[OFF_C + (i0 + 2) * p + j0 + 0] = acc[2][0];
      A[OFF_C + (i0 + 2) * p + j0 + 1] = acc[2][1];
      A[OFF_C + (i0 + 2) * p + j0 + 2] = acc[2][2];
      A[OFF_C + (i0 + 2) * p + j0 + 3] = acc[2][3];
      A[OFF_C + (i0 + 3) * p + j0 + 0] = acc[3][0];
      A[OFF_C + (i0 + 3) * p + j0 + 1] = acc[3][1];
      A[OFF_C + (i0 + 3) * p + j0 + 2] = acc[3][2];
      A[OFF_C + (i0 + 3) * p + j0 + 3] = acc[3][3];
    }
  }
}

#undef TR2
#undef TC2
#undef m
#undef n
#undef p

/* ============================ case 3: 27x41x27 ============================ */
#define m case3_m
#define n case3_n
#define p case3_p

/* 寄存器瓦片 4 x 7：
 * 28 个累加器 + 4 个 A 值 + 1 个 B 值 + 2 个循环下标 + 1 个基址指针。
 * m = p = 27 不是 4/7 的倍数，边界瓦片用条件保护，避免越界访问。 */
#define TR3 4
#define TC3 7

/* 瓦片按 j 方向在外、i 方向在内遍历：t / 7 为 j 瓦片下标，t % 7 为 i 瓦片下标。
 * k 维按 11 个 cache 行组轮转，偏移量由两个瓦片下标共同决定：
 *   offset = (i_tile * 8 + j_tile * 3) % 11
 * 这样相邻瓦片残留的 A 行组互不相同，显著减少 A/B 行在同一个 set 上的冲突。 */
#define I3 ((t % 7) * TR3)
#define J3 ((t / 7) * TC3)
#define K3(KK)                                              \
  (4 * ((gp + ((t % 7) * 8 + (t / 7) * 3) % 11) % 11) + (KK))
#define NG3 11

void gemm_case3(ptr_reg A, ptr_reg B, ptr_reg C, ptr_reg buffer)
{
  RELEASE_UNUSED_POINTERS();

  for (reg t = 0; t < 28; ++t)
  {
    reg acc[TR3][TC3];

    for (reg gp = 0; gp < NG3; ++gp)
    {
      /* 每个 k 组含 4 个 k（一个 cache 行），末尾组不完整时逐个跳过。 */
      if (K3(0) < n)
      {
        reg a[TR3];
        if (I3 + 0 < m)
          a[0] = A[(I3 + 0) * n + K3(0)];
        if (I3 + 1 < m)
          a[1] = A[(I3 + 1) * n + K3(0)];
        if (I3 + 2 < m)
          a[2] = A[(I3 + 2) * n + K3(0)];
        if (I3 + 3 < m)
          a[3] = A[(I3 + 3) * n + K3(0)];
        if (J3 + 0 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 0];
          acc[0][0] += a[0] * b;
          acc[1][0] += a[1] * b;
          acc[2][0] += a[2] * b;
          acc[3][0] += a[3] * b;
        }
        if (J3 + 1 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 1];
          acc[0][1] += a[0] * b;
          acc[1][1] += a[1] * b;
          acc[2][1] += a[2] * b;
          acc[3][1] += a[3] * b;
        }
        if (J3 + 2 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 2];
          acc[0][2] += a[0] * b;
          acc[1][2] += a[1] * b;
          acc[2][2] += a[2] * b;
          acc[3][2] += a[3] * b;
        }
        if (J3 + 3 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 3];
          acc[0][3] += a[0] * b;
          acc[1][3] += a[1] * b;
          acc[2][3] += a[2] * b;
          acc[3][3] += a[3] * b;
        }
        if (J3 + 4 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 4];
          acc[0][4] += a[0] * b;
          acc[1][4] += a[1] * b;
          acc[2][4] += a[2] * b;
          acc[3][4] += a[3] * b;
        }
        if (J3 + 5 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 5];
          acc[0][5] += a[0] * b;
          acc[1][5] += a[1] * b;
          acc[2][5] += a[2] * b;
          acc[3][5] += a[3] * b;
        }
        if (J3 + 6 < p)
        {
          reg b = A[OFF_B + K3(0) * p + J3 + 6];
          acc[0][6] += a[0] * b;
          acc[1][6] += a[1] * b;
          acc[2][6] += a[2] * b;
          acc[3][6] += a[3] * b;
        }
      }
      if (K3(1) < n)
      {
        reg a[TR3];
        if (I3 + 0 < m)
          a[0] = A[(I3 + 0) * n + K3(1)];
        if (I3 + 1 < m)
          a[1] = A[(I3 + 1) * n + K3(1)];
        if (I3 + 2 < m)
          a[2] = A[(I3 + 2) * n + K3(1)];
        if (I3 + 3 < m)
          a[3] = A[(I3 + 3) * n + K3(1)];
        if (J3 + 0 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 0];
          acc[0][0] += a[0] * b;
          acc[1][0] += a[1] * b;
          acc[2][0] += a[2] * b;
          acc[3][0] += a[3] * b;
        }
        if (J3 + 1 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 1];
          acc[0][1] += a[0] * b;
          acc[1][1] += a[1] * b;
          acc[2][1] += a[2] * b;
          acc[3][1] += a[3] * b;
        }
        if (J3 + 2 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 2];
          acc[0][2] += a[0] * b;
          acc[1][2] += a[1] * b;
          acc[2][2] += a[2] * b;
          acc[3][2] += a[3] * b;
        }
        if (J3 + 3 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 3];
          acc[0][3] += a[0] * b;
          acc[1][3] += a[1] * b;
          acc[2][3] += a[2] * b;
          acc[3][3] += a[3] * b;
        }
        if (J3 + 4 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 4];
          acc[0][4] += a[0] * b;
          acc[1][4] += a[1] * b;
          acc[2][4] += a[2] * b;
          acc[3][4] += a[3] * b;
        }
        if (J3 + 5 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 5];
          acc[0][5] += a[0] * b;
          acc[1][5] += a[1] * b;
          acc[2][5] += a[2] * b;
          acc[3][5] += a[3] * b;
        }
        if (J3 + 6 < p)
        {
          reg b = A[OFF_B + K3(1) * p + J3 + 6];
          acc[0][6] += a[0] * b;
          acc[1][6] += a[1] * b;
          acc[2][6] += a[2] * b;
          acc[3][6] += a[3] * b;
        }
      }
      if (K3(2) < n)
      {
        reg a[TR3];
        if (I3 + 0 < m)
          a[0] = A[(I3 + 0) * n + K3(2)];
        if (I3 + 1 < m)
          a[1] = A[(I3 + 1) * n + K3(2)];
        if (I3 + 2 < m)
          a[2] = A[(I3 + 2) * n + K3(2)];
        if (I3 + 3 < m)
          a[3] = A[(I3 + 3) * n + K3(2)];
        if (J3 + 0 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 0];
          acc[0][0] += a[0] * b;
          acc[1][0] += a[1] * b;
          acc[2][0] += a[2] * b;
          acc[3][0] += a[3] * b;
        }
        if (J3 + 1 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 1];
          acc[0][1] += a[0] * b;
          acc[1][1] += a[1] * b;
          acc[2][1] += a[2] * b;
          acc[3][1] += a[3] * b;
        }
        if (J3 + 2 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 2];
          acc[0][2] += a[0] * b;
          acc[1][2] += a[1] * b;
          acc[2][2] += a[2] * b;
          acc[3][2] += a[3] * b;
        }
        if (J3 + 3 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 3];
          acc[0][3] += a[0] * b;
          acc[1][3] += a[1] * b;
          acc[2][3] += a[2] * b;
          acc[3][3] += a[3] * b;
        }
        if (J3 + 4 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 4];
          acc[0][4] += a[0] * b;
          acc[1][4] += a[1] * b;
          acc[2][4] += a[2] * b;
          acc[3][4] += a[3] * b;
        }
        if (J3 + 5 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 5];
          acc[0][5] += a[0] * b;
          acc[1][5] += a[1] * b;
          acc[2][5] += a[2] * b;
          acc[3][5] += a[3] * b;
        }
        if (J3 + 6 < p)
        {
          reg b = A[OFF_B + K3(2) * p + J3 + 6];
          acc[0][6] += a[0] * b;
          acc[1][6] += a[1] * b;
          acc[2][6] += a[2] * b;
          acc[3][6] += a[3] * b;
        }
      }
      if (K3(3) < n)
      {
        reg a[TR3];
        if (I3 + 0 < m)
          a[0] = A[(I3 + 0) * n + K3(3)];
        if (I3 + 1 < m)
          a[1] = A[(I3 + 1) * n + K3(3)];
        if (I3 + 2 < m)
          a[2] = A[(I3 + 2) * n + K3(3)];
        if (I3 + 3 < m)
          a[3] = A[(I3 + 3) * n + K3(3)];
        if (J3 + 0 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 0];
          acc[0][0] += a[0] * b;
          acc[1][0] += a[1] * b;
          acc[2][0] += a[2] * b;
          acc[3][0] += a[3] * b;
        }
        if (J3 + 1 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 1];
          acc[0][1] += a[0] * b;
          acc[1][1] += a[1] * b;
          acc[2][1] += a[2] * b;
          acc[3][1] += a[3] * b;
        }
        if (J3 + 2 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 2];
          acc[0][2] += a[0] * b;
          acc[1][2] += a[1] * b;
          acc[2][2] += a[2] * b;
          acc[3][2] += a[3] * b;
        }
        if (J3 + 3 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 3];
          acc[0][3] += a[0] * b;
          acc[1][3] += a[1] * b;
          acc[2][3] += a[2] * b;
          acc[3][3] += a[3] * b;
        }
        if (J3 + 4 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 4];
          acc[0][4] += a[0] * b;
          acc[1][4] += a[1] * b;
          acc[2][4] += a[2] * b;
          acc[3][4] += a[3] * b;
        }
        if (J3 + 5 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 5];
          acc[0][5] += a[0] * b;
          acc[1][5] += a[1] * b;
          acc[2][5] += a[2] * b;
          acc[3][5] += a[3] * b;
        }
        if (J3 + 6 < p)
        {
          reg b = A[OFF_B + K3(3) * p + J3 + 6];
          acc[0][6] += a[0] * b;
          acc[1][6] += a[1] * b;
          acc[2][6] += a[2] * b;
          acc[3][6] += a[3] * b;
        }
      }
    }

    if (I3 + 0 < m)
    {
      if (J3 + 0 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 0] = acc[0][0];
      if (J3 + 1 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 1] = acc[0][1];
      if (J3 + 2 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 2] = acc[0][2];
      if (J3 + 3 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 3] = acc[0][3];
      if (J3 + 4 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 4] = acc[0][4];
      if (J3 + 5 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 5] = acc[0][5];
      if (J3 + 6 < p)
        A[OFF_C + (I3 + 0) * p + J3 + 6] = acc[0][6];
    }
    if (I3 + 1 < m)
    {
      if (J3 + 0 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 0] = acc[1][0];
      if (J3 + 1 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 1] = acc[1][1];
      if (J3 + 2 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 2] = acc[1][2];
      if (J3 + 3 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 3] = acc[1][3];
      if (J3 + 4 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 4] = acc[1][4];
      if (J3 + 5 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 5] = acc[1][5];
      if (J3 + 6 < p)
        A[OFF_C + (I3 + 1) * p + J3 + 6] = acc[1][6];
    }
    if (I3 + 2 < m)
    {
      if (J3 + 0 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 0] = acc[2][0];
      if (J3 + 1 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 1] = acc[2][1];
      if (J3 + 2 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 2] = acc[2][2];
      if (J3 + 3 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 3] = acc[2][3];
      if (J3 + 4 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 4] = acc[2][4];
      if (J3 + 5 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 5] = acc[2][5];
      if (J3 + 6 < p)
        A[OFF_C + (I3 + 2) * p + J3 + 6] = acc[2][6];
    }
    if (I3 + 3 < m)
    {
      if (J3 + 0 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 0] = acc[3][0];
      if (J3 + 1 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 1] = acc[3][1];
      if (J3 + 2 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 2] = acc[3][2];
      if (J3 + 3 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 3] = acc[3][3];
      if (J3 + 4 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 4] = acc[3][4];
      if (J3 + 5 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 5] = acc[3][5];
      if (J3 + 6 < p)
        A[OFF_C + (I3 + 3) * p + J3 + 6] = acc[3][6];
    }
  }
}

#undef TR3
#undef TC3
#undef K3
#undef I3
#undef J3
#undef NG3
#undef m
#undef n
#undef p

#undef OFF_B
#undef OFF_C
#undef RELEASE_UNUSED_POINTERS
