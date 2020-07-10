import re

RE_SKIP_DIRECTIVES = r"\s*\.(loc|file|text|section|cfi|cfi_sections)"
RE_LABEL = r"\.(\w+)\b"
RE_START_LABEL = r"^\.(\w+)\b"
RE_COMMENT = r"^\s*;\s*"

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

        line = line.replace("__zero_reg__", "r17")

        if re.search(RE_LABEL, line):
            labels[re.search(RE_LABEL, line)[1]] = labels.get(re.search(RE_LABEL, line)[1], 0) + 1
        x.append(line)

with open("dis.txt", 'w') as file:
    for l in x:
        if re.match(RE_START_LABEL, l):
            if labels.get(re.match(RE_START_LABEL, l)[1], 0) < 2:
                continue
        file.write(l)
