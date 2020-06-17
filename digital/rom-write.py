D_OE = 1
R_OE = 2
DR_UnD = 4
STACK_W_nR = 8
D_REG_AND_CCK_D = 16
TOS_BUS_SEL_1 = 32
TOS_BUS_SEL_2 = 64
JUMPIF0 = 128

"""
some comments on pin inputs:
D_RCK is pulse
D_CCK is OR(AND(OR(p4, RAM), clk, pulse) and(~clk, pulse))
R_U/~D is ~D_U/~D
"""

def start():
  open("rom.hex", "w")
  write('v2.0 raw')

def write(arg):
  f = open("rom.hex", "a")
  f.write(arg)
  f.write('\n')

def writeh(code_a, code_b, arg):
  a = format(code_a, '02x')
  b = format(code_b, '02x')
  x = format(arg, '04x')
  write(a + x[0:2])
  write(b + x[2:4])

def push_literal(arg):
  writeh(
    D_OE | DR_UnD | STACK_W_nR,
    D_OE | DR_UnD | STACK_W_nR,
    arg
  )

def jump_if_0(arg):
  writeh(
    D_OE | D_REG_AND_CCK_D | JUMPIF0,
    D_OE | D_REG_AND_CCK_D | JUMPIF0,
    arg,
  )

def nand():
  writeh(
    D_OE | TOS_BUS_SEL_2,
    D_OE | TOS_BUS_SEL_2,
    0x0000
  )

def store():
  writeh(
    D_OE | TOS_BUS_SEL_1,
    D_OE | TOS_BUS_SEL_1 | TOS_BUS_SEL_2,
    0x0000
  )

start()
push_literal(0xcafe)
push_literal(0x0000)
store()
push_literal(0x0000)
jump_if_0(0x0000)

# start()
# push_literal(0x2244)
# push_literal(0x4422)
# nand()
# push_literal(0x1111)
# nand()
# push_literal(0x0000)
# jump_if_0(0x0000)
