from tom1 import *

code = """

[start]

{OPERAND_1} {OPERAND_2}

>r 0 r> 0

[do] >r >r

[loop_body] noop
>r {TEMP} ! {TEMP} @ r> {TEMP} @ [over1]
+

[loopimpl] noop r> r>
1 + [oh] noop
>r {TEMP} ! {TEMP} @ r> {TEMP} @ [over2] noop
>r {TEMP} ! {TEMP} @ r> {TEMP} @ [over3] noop
>r >r

noop [next]

-1 ~& 1 + + [next2]
branch0 else 0 0 branch0 then [else] -1 [then] noop

[loop_jump] branch0 loop_body

[loop_done] noop r> drop r> drop

[call_done] drop

0 branch0 start

""".format(
  TEMP=0x0100,
  OPERAND_1=33,
  OPERAND_2=2,
)

labels = generate(code)

debug()

# i = 0
# while True:
#   print('[CYCLE {}]'.format(i), dump_signals())
#   step_until(pc=labels['loop_body'])
#   print('loop_body:     ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['over1'])
#   print('over1:         ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['loopimpl'])
#   print('loopimpl:      ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['oh'])
#   print('oh:            ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['over2'])
#   print('over2:         ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['over3'])
#   print('over3:         ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['next'])
#   print('next:          ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack', 'stack_bus'))
#   step_until(pc=labels['next2'])
#   print('next2:         ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['then'])
#   print('then:          ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   step_until(pc=labels['loop_jump'])
#   print('loop_jump:     ', dump_signals('pc', 'tos', 'stack_addr', 'return_stack'))
#   print()
#   print()

#   i += 1

step_until(pc=labels['call_done'])
validate(tos=OPERAND_1 * OPERAND_2)
print("success")
