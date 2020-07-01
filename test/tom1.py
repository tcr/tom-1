#!/usr/bin/env python

import socket
import struct
import sys
import json

TCP_IP = '127.0.0.1'
TCP_PORT = 41114
BUFFER_SIZE = 16*1024

def sendmsg(M):
  MESSAGE = struct.pack('>h', len(M)) + M

  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect((TCP_IP, TCP_PORT))
  s.send(MESSAGE)
  data = s.recv(BUFFER_SIZE)
  s.close()

  arg = data[5:]
  if len(arg) == 0:
    return None
  return arg

def validate(**kwargs):
  signals = dump_signals()
  for k, v in kwargs.items():
    if signals[k] != v:
      raise Exception('{} does not equal {}, equals {}'.format(k, v, signals[k]))
  return True

def dump_signals(*args):
  signals = json.loads(sendmsg(b'measure'))
  if signals['stack_addr'] >= 256:
    signals['stack_addr'] = signals['stack_addr'] - 256
    signals['return_stack'] = True
  else:
    signals['return_stack'] = False

  d = dict()
  if len(args) == 0:
    d = signals
  else:
    for arg in args:
      d[arg] = signals[arg]

  return d

def step():
  sendmsg(b'run')

def step_until(**kwargs):
  n = True
  while n:
    n = False
    step()
    signals = json.loads(sendmsg(b'measure'))
    for k, v in kwargs.items():
      if signals[k] != v:
        n = True

def debug():
  sendmsg(b'debug:/Users/trim/Sync/tom-1/test/rom.hex')

TOS_DISABLE = 1
R_OE = 2
DR_UnD = 4
CCK = 8

CPU_BUS_SEL_1 = 16
CPU_BUS_SEL_2 = 32

CPU_BUS_RAM = 0
CPU_BUS_STORE = CPU_BUS_SEL_1
CPU_BUS_STACK = CPU_BUS_SEL_2
CPU_BUS_TOS = CPU_BUS_SEL_1 | CPU_BUS_SEL_2


TOS_BUS_SEL_1 = 64
TOS_BUS_SEL_2 = 128

TOS_BUS_ROM = 0
TOS_BUS_NAND = TOS_BUS_SEL_1
TOS_BUS_BRANCH = TOS_BUS_SEL_2
TOS_BUS_ADD = TOS_BUS_SEL_1 | TOS_BUS_SEL_2

"""
some comments on pin inputs:
D_RCK is pulse
D_CCK is OR(AND(OR(p4, RAM), clk, pulse) and(~clk, pulse))
R_U/~D is ~D_U/~D
"""

codes = []

def loc():
  global codes
  return len(codes)

def write(arg):
  f = open("rom.hex", "a")
  f.write(arg)
  f.write('\n')

def writeh(code_a, code_b, arg, invocation="?"):
  global codes
  codes.append([code_a, code_b, arg, invocation])

def write_code():
  open("rom.hex", "w")
  write('v2.0 raw')
  for [code_a, code_b, arg, invocation] in codes:
    a = format(code_a, '02x')
    b = format(code_b, '02x')
    x = format(arg, '04x')
    write(a + x[0:2])
    write(b + x[2:4])

  with open("rom.lst", "w") as f:
    i = 0
    for [code_a, code_b, arg, invocation] in codes:
      f.write(format(i, '04x'))
      f.write(':  ')
      f.write(invocation)
      f.write('\n    ')
      f.write(format(code_a, '02x'))
      f.write('\n    ')
      f.write(format(code_b, '02x'))
      f.write('    ')
      f.write(format(arg, '04x'))
      f.write('\n\n')
      i += 2

def zero_tos():
  writeh(
    TOS_BUS_ROM | CPU_BUS_STACK,
    TOS_BUS_ROM | CPU_BUS_STACK | TOS_DISABLE,
    0x0,
    'zero_tos()'
  )

def push_literal(arg):
  writeh(
    TOS_BUS_ROM | CPU_BUS_TOS | CCK | DR_UnD,
    TOS_BUS_ROM | CPU_BUS_TOS,
    arg,
    'push_literal({})'.format(arg)
  )

def dup():
  writeh(
    TOS_BUS_ROM | CPU_BUS_TOS | CCK | DR_UnD,
    TOS_BUS_ADD | CPU_BUS_STACK | TOS_DISABLE,
    0,
    'dup()',
  )

def jump_if_0():
  writeh(
    TOS_BUS_ROM | CPU_BUS_STACK | CCK,
    TOS_BUS_BRANCH | CPU_BUS_STACK | TOS_DISABLE,
    0,
    'jump_if_0()',
  )

def add():
  writeh(
    TOS_BUS_ROM | CPU_BUS_STACK | CCK,
    TOS_BUS_ADD | CPU_BUS_STACK,
    0x0000,
    'add()',
  )

def nand():
  writeh(
    TOS_BUS_ROM | CPU_BUS_STACK | CCK,
    TOS_BUS_NAND | CPU_BUS_STACK,
    0x0000,
    'nand()',
  )

def store():
  writeh(
    TOS_BUS_ROM | CPU_BUS_RAM | CCK,
    TOS_BUS_ADD | CPU_BUS_STACK | CCK | TOS_DISABLE,
    0x0000,
    'store()',
  )

def load():
  writeh(
    TOS_BUS_ROM | CPU_BUS_STORE | CCK | DR_UnD,
    TOS_BUS_ADD | CPU_BUS_STACK | CCK | TOS_DISABLE,
    0x0000,
    'load()',
  )

def drop():
  writeh(
    TOS_BUS_ROM | CPU_BUS_STACK | CCK,
    TOS_BUS_ADD | CPU_BUS_STACK | TOS_DISABLE,
    0x0000,
    'drop()',
  )

def return_push():
  writeh(
    TOS_BUS_ROM | CPU_BUS_TOS | CCK | R_OE | DR_UnD,
    TOS_BUS_ADD | CPU_BUS_STACK | CCK | TOS_DISABLE,
    0x0000,
    'return_push()',
  )

def return_pop():
  writeh(
    TOS_BUS_ROM | CPU_BUS_TOS | CCK | DR_UnD,
    TOS_BUS_ADD | CPU_BUS_STACK | CCK | TOS_DISABLE | R_OE,
    0x0000,
    'return_pop()',
  )

def noop():
  writeh(
    TOS_BUS_ROM | CPU_BUS_TOS | CCK | DR_UnD,
    TOS_BUS_ADD | CPU_BUS_STACK | CCK | TOS_DISABLE,
    0x0000,
    'noop()',
  )

def generate(script):
  tokens = script.split()

  labels = set()
  for token in tokens:
    if token.startswith("["):
      labels.add(token[1:-1])

  zero_tos()

  label_pos = dict()
  label_jumps = dict()
  for token in tokens:
    if token == '!':
      store()
    elif token == '@':
      load()
    elif token == 'drop':
      drop()
    elif token == 'dup':
      dup()
    elif token == 'branch0':
      jump_if_0()
    elif token == 'noop':
      noop()
    elif token == '~&':
      nand()
    elif token == '+':
      add()
    elif token == '>r':
      return_push()
    elif token == 'r>':
      return_pop()
    else:
      if token.startswith("0x"):
        push_literal(int(token, 16))
      elif token.isnumeric():
        push_literal(int(token))
      elif token.startswith("-") and token[1:].isnumeric():
        push_literal(0x10000 + int(token))
      elif token.startswith("["):
        label_pos[token[1:-1]] = loc() * 2
      elif token in labels:
        label_jumps[loc()-1] = token
      else:
        raise Exception('unknown token "{}"'.format(token))

  # finally, patch jumps
  global codes
  for l, token in label_jumps.items():
    codes[l][2] = label_pos[token]

  write_code()

  return label_pos
