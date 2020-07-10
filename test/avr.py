from tom1 import *
import re

main = open("../avrtom/main.tom", "r").read()

CODE = """

2 24 !
39 22 !

[start]

{main}

24 @
[end] noop

""".format(
    main=main.format(status=0x08)
)

CODE = re.sub(r"(?m)\#.*$", "", CODE)

labels = generate(CODE)

debug()
step_until(pc=labels["start"])
# validate(tos=78)
print("success.")
