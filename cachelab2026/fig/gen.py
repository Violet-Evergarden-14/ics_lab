"""生成 case1 (16x16x16) 的 cache 组号分布矢量图 (PDF)。

格子颜色 = 组号 % 4（4 色循环），格内数字 = 该 int 所在的 cache 组号。
粗竖线 = cache 行（16 字节 = 4 个 int）的边界。
"""
W, H = 1190.55, 841.89          # A3 横向
CELL, N = 16.0, 16
COLORS = [(1.00, 0.84, 0.84),   # set % 4 == 0
          (0.84, 1.00, 0.84),   # 1
          (0.82, 0.88, 1.00),   # 2
          (1.00, 0.97, 0.78)]   # 3

out = []
def raw(s): out.append(s)
def rect(x, y, w, h, fill=None, stroke=(0, 0, 0), lw=0.2):
    if fill:
        raw(f"{fill[0]:.3f} {fill[1]:.3f} {fill[2]:.3f} rg")
    raw(f"{stroke[0]:.3f} {stroke[1]:.3f} {stroke[2]:.3f} RG")
    raw(f"{lw:.2f} w")
    raw(f"{x:.2f} {y:.2f} {w:.2f} {h:.2f} re")
    raw("B" if fill else "S")
def text(x, y, s, size=6, gray=0.0, bold=False):
    raw(f"{gray:.2f} g")
    raw("BT")
    raw(f"/{'F2' if bold else 'F1'} {size:.2f} Tf")
    raw(f"{x:.2f} {y:.2f} Td")
    raw("(" + s.replace("\\", r"\\").replace("(", r"\(").replace(")", r"\)") + ") Tj")
    raw("ET")
    raw("0 g")

def set_A(i, k): return (4 * i + k // 4) % 32
def set_B(k, j): return (4 * k + j // 4) % 32
def set_C(i, j): return (4 * i + j // 4) % 32

def panel(x0, ytop, title, setfn, base, formula, rowlab, collab):
    text(x0, ytop + 28, title, 11, bold=True)
    for r in range(N):
        for c in range(N):
            s = setfn(r, c)
            x, y = x0 + c * CELL, ytop - (r + 1) * CELL
            rect(x, y, CELL, CELL, fill=COLORS[s % 4], lw=0.15)
            text(x + CELL / 2 - (2.7 if s >= 10 else 1.7), y + CELL / 2 - 2.2,
                 str(s), 4.6, gray=0.25)
    for m in range(N // 4 + 1):                      # 每 4 列 = 一条 cache 行
        x = x0 + m * 4 * CELL
        raw("0 0 0 RG 1.1 w")
        raw(f"{x:.2f} {ytop - N * CELL:.2f} m {x:.2f} {ytop:.2f} l S")
    raw("0 0 0 RG 1.5 w")
    raw(f"{x0:.2f} {ytop - N * CELL:.2f} {N * CELL:.2f} {N * CELL:.2f} re S")
    for r in range(N):
        text(x0 - 14, ytop - (r + 1) * CELL + 5, str(r), 5.5, gray=0.35)
    for c in range(N):
        text(x0 + c * CELL + 5, ytop + 4, str(c), 5.5, gray=0.35)
    text(x0 - 30, ytop + 4, collab, 6, gray=0.35)
    text(x0 + N * CELL + 6, ytop + 12, rowlab, 6, gray=0.35)
    text(x0, ytop - N * CELL - 17, "base = " + base, 8, gray=0.15, bold=True)
    text(x0, ytop - N * CELL - 31, formula, 7.2, gray=0.15)

text(40, H - 42,
     "Case1  16x16x16  -  cache set map   (s=5, E=1, b=4  =>  32 sets, 1 line per set, line = 16B = 4 ints)",
     13, bold=True)
text(40, H - 60,
     "cell fill = set mod 4 (4-colour cycle);  number in cell = cache set of that int;  "
     "bold vertical line = cache line boundary.  Cells with the same number evict each other.",
     8.2, gray=0.25)

ytop = H - 155
panel(62, ytop, "A   int[i][k]", set_A, "0x30000000",
      "int = i*16 + k       line = 4i + k/4       set = (4i + k/4) mod 32", "row i", "col k")
panel(432, ytop, "B   int[k][j]", set_B, "0x30000400",
      "int = 256 + k*16 + j   line = 64 + 4k + j/4   set = (4k + j/4) mod 32", "row k", "col j")
panel(802, ytop, "C   int[i][j]", set_C, "0x30000800",
      "int = 512 + i*16 + j   line = 128 + 4i + j/4  set = (4i + j/4) mod 32", "row i", "col j")

ly = 200
text(62, ly + 30, "Legend", 10, bold=True)
for idx, col in enumerate(COLORS):
    x = 62 + idx * 165
    rect(x, ly + 10, 34, 14, fill=col, lw=0.5)
    text(x + 40, ly + 14, f"set mod 4 == {idx}", 8.5, gray=0.2)

notes = [
    "1.  A and C share the same formula: A[i][k] and C[i][j] land in the same set whenever k/4 == j/4, so reading A evicts C.",
    "2.  The set only depends on row mod 8: row i and row i+8 own exactly the same 4 sets (4*(i+8) = 4i + 32 = 4i mod 32). B likewise.",
    "3.  One matrix = 64 cache lines; the cache holds only 32 lines. A+B+C = 192 lines, the cache is 1/6 of that.",
    "4.  Each row owns 4 consecutive sets, so the colour cycle repeats every 4 columns and row 8 looks exactly like row 0.",
    "5.  buffer starts at int 768 (line 192, sets 0..15): it competes with the even rows of A and C.",
]
for i, s in enumerate(notes):
    text(62, ly - 12 - i * 17, s, 7.6, gray=0.15)

content = "\n".join(out).encode("latin-1")
objs = [
    b"<< /Type /Catalog /Pages 2 0 R >>",
    b"<< /Type /Pages /Kids [3 0 R] /Count 1 >>",
    (f"<< /Type /Page /Parent 2 0 R /MediaBox [0 0 {W} {H}] "
     f"/Resources << /Font << /F1 5 0 R /F2 6 0 R >> >> /Contents 4 0 R >>").encode(),
    b"<< /Length " + str(len(content)).encode() + b" >>\nstream\n" + content + b"\nendstream",
    b"<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>",
    b"<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica-Bold >>",
]
pdf = bytearray(b"%PDF-1.4\n")
offs = []
for i, o in enumerate(objs, 1):
    offs.append(len(pdf))
    pdf += f"{i} 0 obj\n".encode() + o + b"\nendobj\n"
xref = len(pdf)
pdf += f"xref\n0 {len(objs) + 1}\n0000000000 65535 f \n".encode()
for o in offs:
    pdf += f"{o:010d} 00000 n \n".encode()
pdf += f"trailer\n<< /Size {len(objs) + 1} /Root 1 0 R >>\nstartxref\n{xref}\n%%EOF\n".encode()

path = "/home/ubuntu/cl_sandbox/fig/case1_cache_map.pdf"
open(path, "wb").write(pdf)
print("wrote", path, len(pdf), "bytes,", len(out), "ops")
