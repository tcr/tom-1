def start():
  open("rom.hex", "w")
  write('v2.0 raw')

def write(arg):
  f = open("rom.hex", "a")
  f.write(arg)
  f.write('\n')

def push_literal(arg):
  write(format(0b00001101, '04x'))
  write(arg)

def jump_if_0(dest):
  write(format(0b10010001, '04x'))
  write(dest)

def nand():
  write(format(0b01000001, '04x'))
  write('0000')

def store():
  write(format(0b00100001, '04x'))
  write('0000')

def load():
  # write(format(0b00100001, '04x'))
  write('0000')

start()
push_literal('cafe')
push_literal('0000')
store()
push_literal('0000')
load()
push_literal('0000')
jump_if_0('0000')


# push_literal('2244')
# push_literal('4422')
# nand()
# push_literal('1111')
# nand()
# push_literal('0000')
# jump_if_0('0000')
