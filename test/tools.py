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
  signals = json.loads(sendmsg(b'measure'))
  for k, v in kwargs.items():
    if signals[k] != v:
      raise Exception('{} does not equal {}, equals {}'.format(k, v, signals[k]))
  return True

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
STACK_W_nR = 8
CCK = 16
TOS_BUS_SEL_1 = 32
TOS_BUS_SEL_2 = 64
JUMPIF0 = 128

TOS_BUS_ROM = 0
TOS_BUS_RAM = TOS_BUS_SEL_1
TOS_BUS_ADD = TOS_BUS_SEL_2
TOS_BUS_NAND = TOS_BUS_SEL_1 | TOS_BUS_SEL_2

"""
some comments on pin inputs:
D_RCK is pulse
D_CCK is OR(AND(OR(p4, RAM), clk, pulse) and(~clk, pulse))
R_U/~D is ~D_U/~D
"""

current_pos = 0

def loc():
  global current_pos
  return current_pos

def write(arg):
  f = open("rom.hex", "a")
  f.write(arg)
  f.write('\n')

def writeh(code_a, code_b, arg):
  global current_pos

  a = format(code_a, '02x')
  b = format(code_b, '02x')
  if arg < 0:
    arg += 0xffff
  x = format(arg, '04x')
  write(a + x[0:2])
  write(b + x[2:4])

  current_pos += 2

def start():
  open("rom.hex", "w")
  write('v2.0 raw')
  zero_tos()

def zero_tos():
  writeh(
    TOS_BUS_ROM,
    TOS_BUS_ROM | TOS_DISABLE,
    0x0
  )

def push_literal(arg):
  writeh(
    TOS_BUS_ROM | CCK | DR_UnD | STACK_W_nR,
    TOS_BUS_ROM | DR_UnD | STACK_W_nR,
    arg
  )

def jump_if_0(arg):
  writeh(
    TOS_BUS_ROM | CCK,
    TOS_BUS_ROM | JUMPIF0,
    arg,
  )

def add():
  writeh(
    TOS_BUS_ROM | CCK,
    TOS_BUS_ADD,
    0x0000
  )

def nand():
  writeh(
    TOS_BUS_ROM | CCK,
    TOS_BUS_NAND,
    0x0000
  )

def store():
  writeh(
    TOS_BUS_RAM | CCK,
    TOS_BUS_ADD | TOS_DISABLE,
    0x0000
  )

def load():
  writeh(
    TOS_BUS_RAM | CCK | DR_UnD | STACK_W_nR,
    TOS_BUS_ADD | CCK | TOS_DISABLE,
    0x0000
  )

def drop():
  writeh(
    TOS_BUS_ROM | CCK,
    TOS_BUS_ADD | TOS_DISABLE,
    0x0000
  )

def return_push():
  writeh(
    TOS_BUS_ROM | CCK | R_OE | DR_UnD | STACK_W_nR,
    TOS_BUS_ADD | CCK | TOS_DISABLE,
    0x0000
  )

def return_pop():
  writeh(
    TOS_BUS_ROM | CCK | DR_UnD | STACK_W_nR,
    TOS_BUS_ADD | CCK | TOS_DISABLE | R_OE,
    0x0000
  )

def noop():
  writeh(
    TOS_BUS_ROM | CCK | STACK_W_nR | DR_UnD,
    TOS_BUS_ADD | CCK | TOS_DISABLE,
    0x0000
  )
