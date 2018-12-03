#!/usr/bin/env python
#-*-coding:utf-8-*-

import sys

if len(sys.argv) > 1:
    read_file = open(sys.argv[1])
    for line in read_file:
        sys.stdout.write(line)
        sys.stdout.flush()
else:
    print("add file path")
