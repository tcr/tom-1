from tom1 import *

labels = generate("""

[start]

4 6

>r 0 r> 0

[do] >r >r

[loop_body] >r {TEMP} ! {TEMP} @ r> {TEMP} @ +

[loopimpl] r> r> 1 +

>r {TEMP} ! {TEMP} @ r> {TEMP} @ [a]
>r {TEMP} ! {TEMP} @ r> {TEMP} @ [b]

>r >r
-1 ~& 1 + + branch0 else 0 0 branch0 then [else] -1 [then]
>r {TEMP} ! r> {TEMP} @

[loop_jump] branch0 loop_body

[loop_done] >r {TEMP} ! r> {TEMP} @ drop

[call_done] drop

0 branch0 start

""".format(TEMP=0x0100))

debug()
step_until(pc=labels['then'])
dump_signals()
validate(tos=0xffff)

while True:
  print('loop_body')
  step_until(pc=labels['loop_body'])
  dump_signals()

  print('loopimpl:')
  step_until(pc=labels['loopimpl'])
  dump_signals()

  print('b')
  step_until(pc=labels['b'])
  dump_signals()

  print('then:')
  step_until(pc=labels['then'])
  dump_signals()
  print('loop_jump:')
  step_until(pc=labels['loop_jump'])
  dump_signals()
  print()
  print()

step_until(pc=labels['call_done'])
validate(tos=4*6)
print("success")
