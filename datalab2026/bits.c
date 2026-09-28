/* WARNING: Do not include any other libraries here,
 * otherwise you will get an error while running test.py
 * You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 *
 * Using printf will interfere with our script capturing the execution results.
 * At this point, you can only test correctness with ./btest.
 * After confirming everything is correct in ./btest, remove the printf
 * and run the complete tests with test.py.
 */

 /*
 * bitAnd - x & y using only ~ and |
 * Example: bitAnd(4, 5) = 4
 * Legal ops: ~ |
 * Max ops: 7
 * Difficulty: 1
 */
int bitAnd(int x, int y) {
    return ~(~x | ~y);
}

/*
 * bitXor - x ^ y using only ~ and &
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 7
 *   Difficulty: 1
 */
int bitXor(int x, int y) {
    return (~(x & y)) & (~((~x) & (~y)));
}

/*
 * samesign - Determines if two integers have the same sign.
 *   0 is not positive, nor negative
 *   Example: samesign(0, 1) = 0, samesign(0, 0) = 1
 *            samesign(-4, -5) = 1, samesign(-4, 5) = 0
 *   Legal ops: >> << ! ^ && if else &
 *   Max ops: 12
 *   Difficulty: 2
 *
 * Parameters:
 *   x - The first integer.
 *   y - The second integer.
 *
 * Returns:
 *   1 if x and y have the same sign , 0 otherwise.
 */
int samesign(int x, int y) {
    if (x) {
		if (y) return !((x ^ y) & (1 << 31));
		else return 0;
	} else {
		if (y) return 0;
		else return 1;
	}
}

/*
 * logtwo - Calculate the base-2 logarithm of a positive integer using bit
 *   shifting. (Think about bitCount)
 *   Note: You may assume that v > 0
 *   Example: logtwo(32) = 5
 *   Legal ops: > < >> << |
 *   Max ops: 25
 *   Difficulty: 4
 */
int logtwo(int v) {
    int res = 0;
	int b1 = ((v >> 16) > 0) << 4;
	v >>= b1;
	res |= b1;
	int b2 = ((v >> 8) > 0) << 3;
	v >>= b2;
	res |= b2;
	int b3 = ((v >> 4) > 0) << 2;
	v >>= b3;
	res |= b3;
	int b4 = ((v >> 2) > 0) << 1;
	v >>= b4;
	res |= b4;
	int b5 = ((v >> 1) > 0);
	res |= b5;
	return res;
}

/*
 *  byteSwap - swaps the nth byte and the mth byte
 *    Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *              byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *    Note: You may assume that 0 <= n <= 3, 0 <= m <= 3
 *    Legal ops: ! ~ & ^ | + << >>
 *    Max ops: 17
 *    Difficulty: 2
 */
int byteSwap(int x, int n, int m) {
	n <<= 3;
	m <<= 3;
	int mask1 = 0xff << n;
	int mask2 = 0xff << m;
	int y = (((x & mask1) >> n) << m) & mask2;
	int z = (((x & mask2) >> m) << n) & mask1;
	x &= ~(mask1 | mask2);
    return x | y | z;
}

/*
 * reverse - Reverse the bit order of a 32-bit unsigned integer.
 *   Example: reverse(0xFFFF0000) = 0x0000FFFF reverse(0x80000000)=0x1 reverse(0xA0000000)=0x5
 *   Note: You may assume that an unsigned integer is 32 bits long.
 *   Legal ops: << | & - + >> for while ! ~ (You can define unsigned in this function)
 *   Max ops: 30
 *   Difficulty: 3
 */
unsigned reverse(unsigned v) {
    int mask = 0x0000ffff;
	v = ((v & mask) << 16) + ((v >> 16) & mask);
	mask = 0x00ff00ff;
	v = ((v & mask) << 8) + ((v >> 8) & mask);
	mask = 0x0f0f0f0f;
	v = ((v & mask) << 4) + ((v >> 4) & mask);
	mask = 0x33333333;
	v = ((v & mask) << 2) + ((v >> 2) & mask);
	mask = 0x55555555;
	v = ((v & mask) << 1) + ((v >> 1) & mask);
	return v;
}

/*
 * logicalShift - shift x to the right by n, using a logical shift
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Note: You can assume that 0 <= n <= 31
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Difficulty: 3
 */
int logicalShift(int x, int n) {
	int t = !!(x & (1 << 31));
	t <<= (32 + ~n);
    return (((x & 0x7fffffff)) >> n) | t;
}

/*
 * leftBitCount - returns count of number of consective 1's in left-hand (most) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12,
 *             leftBitCount(0xFE00FF0F) = 7
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Difficulty: 4
 */
int leftBitCount(int x) {
	int res = 0;
	int v = (!((x >> 16 << 16) ^ 0xffff0000)) << 4;
	res += v;
	x <<= v;
	v = (!((x >> 24 << 24) ^ 0xff000000)) << 3;
	res += v;
	x <<= v;
	v = (!((x >> 28 << 28) ^ 0xf0000000)) << 2;
	res += v;
	x <<= v;
	v = (!((x >> 30 << 30) ^ 0xc0000000)) << 1;
	res += v;
	x <<= v;
	v = !((x >> 31 << 31) ^ 0x80000000);
	res += v;
	x <<= v;
	res += !!(x & 0x80000000);
	return res;
}

/*
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but it is to be interpreted as
 *   the bit-level representation of a single-precision floating point values.
 *   Legal ops: if else while for & | ~ + - >> << < > ! ==
 *   Max ops: 30
 *   Difficulty: 4
 */
unsigned float_i2f(int x) {
	unsigned r;
	if (x == 0) return 0;
	if (x == 0x80000000) return 0xcf000000;
	if (x < 0) {
		x = -x;
		r = 0x80000000;
	} else r = 0;
	int res = 31;
	while (!(x >> res)) res -= 1;
	if (res < 24) {
		x <<= (23 - res);
	} else {
		int move = res - 24;
		int idx = (((x >> move) << move) == x);
		x >>= move;
		if (x & 1) {
			if (!idx) x++;
			else {
				if (x & 2) x++;
			}
		}
		x >>= 1;
		if (x & 0x01000000) {
			res += 1;
			x >>= 1;
		}
	}
	r |= (x & 0x7fffff);
	int m = res + 127;
	r |= (m << 23);
	return r;
}

/*
 * floatScale2 - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: & >> << | if > < >= <= ! ~ else + ==
 *   Max ops: 30
 *   Difficulty: 4
 */
unsigned floatScale2(unsigned uf) {
	unsigned mask = 0x7f800000;
	unsigned mask1 = 0x807fffff;
	unsigned mask2 = 0x7fffff;
	unsigned mask_res = (uf & mask) >> 23;
	unsigned mask1_res = uf & mask1;
    if (mask_res == 0xff) return uf;
	if (mask_res == 0xfe) return (uf & 0x80000000) | 0x7f800000;
	if (mask_res) {
		mask_res = (mask_res + 1) & 0xff;
		return mask1_res | (mask_res << 23);
	}
	if (uf & 0x400000) {
		return ((uf << 1) & mask2) + (uf & 0x80000000) + 0x800000;
	}
	return (uf & 0xff800000) + ((uf << 1) & mask2);
}

/*
 * float64_f2i - Convert a 64-bit IEEE 754 floating-point number to a 32-bit signed integer.
 *   The conversion rounds towards zero.
 *   Note: Assumes IEEE 754 representation and standard two's complement integer format.
 *   Parameters:
 *     uf1 - The lower 32 bits of the 64-bit floating-point number.
 *     uf2 - The higher 32 bits of the 64-bit floating-point number.
 *   Returns:
 *     The converted integer value, or 0x80000000 on overflow, or 0 on underflow.
 *   Legal ops: >> << | & ~ ! + - > < >= <= if else
 *   Max ops: 60
 *   Difficulty: 3
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
    unsigned sign = uf2 & 0x80000000;
    unsigned exp = (uf2 >> 20) & 0x7FF;
    unsigned frac_high = uf2 & 0xFFFFF;
    int e = exp - 1023;
    if (e < 0) return 0;
    if (e > 30) return 0x80000000;
    unsigned high = (1 << 31) | (frac_high << 11) | (uf1 >> 21);
    unsigned abs_val = high >> (31 - e);
    if (sign) return -abs_val;
    return abs_val;
}

/*
 * floatPower2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: < > <= >= << >> + - & | ~ ! if else &&
 *   Max ops: 30
 *   Difficulty: 4
 */
unsigned floatPower2(int x) {
    if (x > 127) return 0x7f800000;
	if (x < -149) return 0;
	if (x < -126) return 1 << (x + 149);
	return (x + 127) << 23;
}
