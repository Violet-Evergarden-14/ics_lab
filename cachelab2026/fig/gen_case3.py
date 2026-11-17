"""生成 case3 (27x41x27) 的 cache 组号分布矢量图 (PDF)。

格子颜色 = 组号 % 4（4 色循环），格内数字 = 该 int 所在的 cache 组号 (0..31)。
每条 cache 行的第一个 int（下标 % 4 == 0）左侧画一道细竖线，用来看行边界怎么"漂"。
"""
W, H = 1190.55, 841.89          # A3 横向
CELL = 10.0
COLORS = [(1.00, 0.84, 0.84), (0.84, 1.00, 0.84), (0.82, 0.88, 1.00), (1.00, 0.97, 0.78)]

m, n, p = 27, 41, 27
A_BASE, B_BASE, C_BASE = 0, m * n, m * n + n * p

out = []
def raw(s): out.append(s)
def rect(x, y, w, h, fill=None, stroke=(0, 0, 0), lw=0.15):
    if fill:
        raw(f"{fill[0]:.3f} {fill[1]:.3f} {fill[2]:.3f} rg")
    raw(f"{stroke[0]:.3f} {stroke[1]:.3f} {stroke[2]:.3f} RG")
    raw(f"{lw:.2f} w")
    raw(f"{x:.2f} {y:.2f} {w:.2f} {h:.2f} re")
    raw("B" if fill else "S")
def line(x1, y1, x2, y2, lw=0.8):
    raw("0 0 0 RG")
    raw(f"{lw:.2f} w")
    raw(f"{x1:.2f} {y1:.2f} m {x2:.2f} {y2:.2f} l S")
def text(x, y, s, size=5, gray=0.0, bold=False):
    raw(f"{gray:.2f} g")
    raw("BT")
    raw(f"/{'F2' if bold else 'F1'} {size:.2f} Tf")
    raw(f"{x:.2f} {y:.2f} Td")
    raw("(" + s.replace("\\", r"\\").replace("(", r"\(").replace(")", r"\)") + ") Tj")
    raw("ET")
    raw("0 g")

def panel(x0, ytop, rows, cols, base, formula, title, rowlab, collab):
    text(x0, ytop + 16, title, 9.5, bold=True)
    for r in range(rows):                       # r = 行（自上而下）
        for c in range(cols):
            idx = base + r * cols + c
            st = (idx // 4) % 32
            x, y = x0 + c * CELL, ytop - (r + 1) * CELL
            rect(x, y, CELL, CELL, fill=COLORS[st % 4], lw=0.1)
            text(x + CELL / 2 - (2.5 if st >= 10 else 1.4), y + CELL / 2 - 1.9, str(st), 4.2, gray=0.25)
            if idx % 4 == 0:                    # 一条 cache 行的起点
                line(x, y, x, y + CELL, lw=0.9)
    raw("0 0 0 RG 1.3 w")
    raw(f"{x0:.2f} {ytop - rows * CELL:.2f} {cols * CELL:.2f} {rows * CELL:.2f} re S")
    for r in range(0, rows, 3):
        text(x0 - 12, ytop - (r + 1) * CELL + 3, str(r), 4.5, gray=0.35)
    for c in range(0, cols, 4):
        text(x0 + c * CELL + 2, ytop + 3, str(c), 4.5, gray=0.35)
    text(x0 - 26, ytop + 3, collab, 5.5, gray=0.35)
    text(x0 + cols * CELL + 4, ytop + 6, rowlab, 5.5, gray=0.35)
    text(x0, ytop - rows * CELL - 12, formula, 6.4, gray=0.15)

text(36, H - 36,
     "Case3  27x41x27  -  cache set map   (s=5, E=1, b=4  =>  32 sets, 1 line per set, line = 16B = 4 ints)",
     12, bold=True)
text(36, H - 52,
     "cell fill = set mod 4;  number in cell = cache set;  thin vertical line = start of a cache line (int index mod 4 == 0).",
     7.6, gray=0.25)

ytop = H - 95
panel(40, ytop, 27, 41, A_BASE, "A[i][k] = A + i*41 + k        set = ((i*41 + k) / 4) mod 32",
      "A  27 x 41", "row i", "col k")
panel(500, ytop, 41, 27, B_BASE, "B[k][j] = B + k*27 + j        set = ((1107 + k*27 + j) / 4) mod 32",
      "B  41 x 27", "row k", "col j")
panel(810, ytop - 0, 27, 27, C_BASE, "C[i][j] = C + i*27 + j        set = ((2214 + i*27 + j) / 4) mod 32",
      "C  27 x 27", "row i", "col j")

ly = 150
text(36, ly + 44, "Legend", 9.5, bold=True)
for idx, col in enumerate(COLORS):
    x = 36 + idx * 150
    rect(x, ly + 26, 26, 12, fill=col, lw=0.5)
    text(x + 32, ly + 29, f"set mod 4 == {idx}", 7.6, gray=0.2)

notes = [
    "1.  27 and 41 are odd, so rows do NOT start on a cache-line boundary: A row i starts at int 41i, i.e. offset (41i mod 4) inside a line.",
    "2.  A 4-int group therefore often straddles two cache lines -> one 'block' of 4 consecutive k costs 2 lines instead of 1.",
    "3.  A = 1107 ints (277 lines), B = 1107 (278 lines), C = 729 (183 lines). The cache holds 32 lines = 128 ints: three rows of A fill it.",
    "4.  buffer starts at int 2943 = line 735 (offset 3 inside the line) -> its 16 lines are not 4-int aligned either.",
]
for i, s in enumerate(notes):
    text(36, ly - 4 - i * 15, s, 7.0, gray=0.15)

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
pdf = bytearray(b"%PDF-1.4\n"); offs = []
for i, o in enumerate(objs, 1):
    offs.append(len(pdf)); pdf += f"{i} 0 obj\n".encode() + o + b"\nendobj\n"
xref = len(pdf)
pdf += f"xref\n0 {len(objs)+1}\n0000000000 65535 f \n".encode()
for o in offs: pdf += f"{o:010d} 00000 n \n".encode()
pdf += f"trailer\n<< /Size {len(objs)+1} /Root 1 0 R >>\nstartxref\n{xref}\n%%EOF\n".encode()

path = "/home/ubuntu/ics_lab/cachelab2026/fig/case3_cache_map.pdf"
open(path, "wb").write(pdf)
print("wrote", path, len(pdf), "bytes")
