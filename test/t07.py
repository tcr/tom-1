from tom1 import *

labels = generate("""

[start]

0x8372 0x35aa -1 ~& 1 + + [check_subtraction]

0 branch0 start

""")

debug()
step_until(pc=labels['check_subtraction'])
validate(tos=0x4dc8)
print("success")
