from tom1 import *

labels = generate("""

[start]

20 0 >r

{TEMP} !

r> {TEMP} @

[check_tos]

branch0 start

[check_pc]

branch0 start

""".format(TEMP=0x0100))

debug()
step_until(pc=labels['check_tos'])
validate(tos=20)
step_until(pc=labels['check_pc'])
print("success")
