import re

RE_SKIP_DIRECTIVES = r"\s*\.(loc|file|text|section|cfi|cfi_sections)"
RE_LABEL = r"\.(\w+)\b"
RE_START_LABEL = r"^\.(\w+)\b"
RE_COMMENT = r"^\s*;\s*"

mul_count = 0

x = []
labels = dict()
with open("dis.txt") as file:
    for l in file:
        line = l[20:]

        if line.isspace():
            continue
        if re.match(RE_SKIP_DIRECTIVES, line):
            continue
        if line.startswith("/*"):
            continue
        if line.startswith("__"):
            continue
        if re.match(RE_COMMENT, line):
            continue

        if 'rcall __mulqi3' in line:
            line = """
	  clr	    __temp_reg__
__mulqi3_loop_{index}:
	  sbrc	r24,0
	  add	    __temp_reg__,r22
	  add	    r22,r22
	  breq	__mulqi3_exit_{index}
	  lsr	    r24
	  brne	__mulqi3_loop_{index}
__mulqi3_exit_{index}:
    mov     r24,__temp_reg__

""".format(index = mul_count)
            mul_count += 1

        line = line.replace("__zero_reg__", "r17")
        line = line.replace("__temp_reg__", "r16")

        if re.search(RE_LABEL, line):
            labels[re.search(RE_LABEL, line)[1]] = labels.get(re.search(RE_LABEL, line)[1], 0) + 1
        x.append(line)

with open("dis.txt", 'w') as file:
    for l in x:
        if re.match(RE_START_LABEL, l):
            if labels.get(re.match(RE_START_LABEL, l)[1], 0) < 2:
                continue
        file.write(l)
