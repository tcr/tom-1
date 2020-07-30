import re
from tom1 import *
from adt import adt, Case

@adt
class Ast:
    STORE: Case
    LOAD: Case
    DROP: Case
    DUP: Case
    BRANCH0: Case
    NOOP: Case
    NAND: Case
    ADD: Case
    RETURN_PUSH: Case
    RETURN_POP: Case
    IO_OUT: Case
    IO_IN: Case
    PUSH_LITERAL: Case[int]
    LABEL: Case[str]
    BRANCH_TARGET: Case[str]

def parse(script):
  tokens = re.sub(r"(?m)\#.*$", "", script).split()

  labels = set()
  for token in tokens:
    if token.startswith("["):
      labels.add(token[1:-1])

  zero_tos()

  label_pos = dict()
  label_jumps = dict()
  program = []
  for token in tokens:
    if token == '!' or token == 'store':
      program.append(Ast.STORE())
    elif token == '@' or token == 'load':
      program.append(Ast.LOAD())
    elif token == 'drop':
      program.append(Ast.DROP())
    elif token == 'dup':
      program.append(Ast.DUP())
    elif token == 'branch0':
      program.append(Ast.BRANCH0())
    elif token == 'noop':
      program.append(Ast.NOOP())
    elif token == '~&' or token == 'nand':
      program.append(Ast.NAND())
    elif token == '+' or token == 'add':
      program.append(Ast.ADD())
    elif token == '>r' or token == 'return_push':
      program.append(Ast.RETURN_PUSH())
    elif token == 'r>' or token == 'return_pop':
      program.append(Ast.RETURN_POP())
    elif token == 'out':
      program.append(Ast.IO_OUT())
    elif token == 'in':
      program.append(Ast.IO_IN())
    else:
      if token.startswith("0x"):
        program.append(Ast.PUSH_LITERAL(int(token, 16)))
      elif token.isnumeric():
        program.append(Ast.PUSH_LITERAL(int(token)))
      elif token.startswith("-") and token[1:].isnumeric():
        program.append(Ast.PUSH_LITERAL(0x10000 + int(token)))
      elif token.startswith("["):
        program.append(Ast.BRANCH_TARGET(token[1:-1]))
      elif token in labels:
        program.append(Ast.LABEL(token))
      else:
        raise Exception('unknown token "{}"'.format(token))

  return program

class State:
  def __init__(self, data=[0]*0xFF, d_reg=0, ret=[0]*0xFF, r_reg=0, ram=[0]*0x8000, pc=0):
    self.data = data
    self.d_reg = d_reg
    self.ret = ret
    self.r_reg = r_reg
    self.ram = ram
    self.pc = pc

  def tos(self, offset=0):
    return self.data[self.d_reg - offset]

  def eval(self, until=None):
    def sanity():
      if self.d_reg < 0 or self.d_reg > 0xFF:
        raise Exception('d_reg is invalid')
      if self.r_reg < 0 or self.r_reg > 0xFF:
        raise Exception('r_reg is invalid')

    def push_literal(value):
      self.d_reg += 1
      self.data[self.d_reg] = value

    def store():
      addr = self.data[self.d_reg]
      self.d_reg -= 1
      value = self.data[self.d_reg]
      self.d_reg -= 1
      self.ram[addr] = value

    def load():
      addr = self.data[self.d_reg]
      self.data[self.d_reg] = self.ram[addr]

    def drop():
      self.d_reg -= 1

    def dup():
      self.d_reg += 1
      self.data[self.d_reg] = self.data[self.d_reg - 1]

    def noop():
      pass

    def nand():
      a = self.data[self.d_reg]
      self.d_reg -= 1
      b = self.data[self.d_reg]
      self.data[self.d_reg] = ~(a & b) & 0xFFFF

    def add():
      a = self.data[self.d_reg]
      self.d_reg -= 1
      b = self.data[self.d_reg]
      self.data[self.d_reg] = (a + b) & 0xFFFF

    def io_out():
      pass

    def io_in():
      pass

    def return_push():
      value = self.data[self.d_reg]
      self.d_reg -= 1
      self.r_reg += 1
      self.ret[self.r_reg] = value

    def return_pop():
      value = self.ret[self.r_reg]
      self.r_reg -= 1
      self.d_reg += 1
      self.data[self.d_reg] = value

    def branch_target(token):
      nonlocal until
      if until != None and until == token:
        raise UntilException

    class UntilException(Exception):
      pass

    labels = dict()
    for (i, op) in enumerate(ops):
      try:
        labels[op.branch_target()] = i
      except AttributeError as e:
        pass

    i = self.pc
    try:
      while i < len(ops):
        op = ops[i]
        i += 1

        def branch0():
          nonlocal i, labels
          token = ops[i]
          a = self.data[self.d_reg]
          self.d_reg -= 1

          if a == 0:
            i = labels[token.label()]

        op.match(
          push_literal = push_literal,
          store = store,
          load = load,
          drop = drop,
          dup = dup,
          noop = noop,
          nand = nand,
          add = add,
          return_push = return_push,
          return_pop = return_pop,
          io_out = io_out,
          io_in = io_in,
          branch0 = branch0,
          branch_target = branch_target,
          label = lambda token: None,
        )
        sanity()

      if i > len(ops):
        raise Exception('Ran past end of program')
      if until != None:
        raise Exception('Did not run until label "{}"'.format(until))

      self.pc = i
    except UntilException:
      self.pc = i
      pass


# code = """

# [start]

# {OPERAND_1} {OPERAND_2}

# >r 0 r> 0

# [do] >r >r

# [loop_body] noop
# >r {TEMP} ! {TEMP} @ r> {TEMP} @ [over1]
# +

# [loopimpl] noop r> r>
# 1 + [oh] noop
# >r {TEMP} ! {TEMP} @ r> {TEMP} @ [over2] noop
# >r {TEMP} ! {TEMP} @ r> {TEMP} @ [over3] noop
# >r >r

# noop [next]

# -1 ~& 1 + + [next2]
# branch0 else 0 0 branch0 then [else] -1 [then] noop

# [loop_jump] branch0 loop_body

# [loop_done] noop r> drop r> drop

# [call_done] drop

# 0 branch0 start

# """.format(
#   TEMP=0x0100,
#   OPERAND_1=33,
#   OPERAND_2=2,
# )

# ops = parse(code)
# state = State()
# state.eval(until='call_done')
# print(state.tos())

arg_1 = 4
arg_2 = 39

code = """

    {arg_1} 24 !
    {arg_2} 22 !

    {ext}

    16 load [done]

""".format(
  ext = open('../avrtom/main.tom', 'r').read(),
  arg_1 = arg_1,
  arg_2 = arg_2,
)


ops = parse(code)
state = State()
# for i in range(0,0x108):
#   state.eval(until='done')
#   print('ram[31]={} ram[21]={}'.format(hex(state.ram[31]), hex(state.ram[21])))
#   state.eval(until='d2')
#   print('status={}'.format(bin(state.ram[8])))
#   print('tos={}'.format(hex(state.tos())))
state.eval(until='done')
print('tos={} (compare={})'.format(state.tos(), arg_1 * arg_2))
