#!/usr/bin/env python3

from pathlib import Path
import glob
import subprocess
import re

files = []
for folder in ["src"]:
    for ext in ["c", "h", "cpp", "hpp"]:
        files.extend(glob.glob(pathname=f"{folder}/**/*.{ext}", recursive=True))

for file in files:
    subprocess.run(["clang-format", "--style=file:.clang-format", "-i", f"{file}"])

    # Remove the space between closing parens and opening brace
    file_path = Path(file)
    fd = file_path.read_text()

    for kind in ("namespace", "struct", "class"):
        ns = re.finditer(f"({kind}.*) {{", fd, flags=re.MULTILINE)
        for replace in ns:
            fd = f"{fd[:replace.start()]}{replace.groups()[0]}{{{fd[replace.end():]}"

    fd = fd.replace(") {", "){")
    fd = fd.replace(r"(namespace.*) {", "){")
    file_path.write_text(fd)
