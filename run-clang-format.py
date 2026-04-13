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
