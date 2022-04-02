#!/usr/bin/python3

import sys

arg1 = sys.argv[0]
arg2 = sys.argv[1]
arg3 = sys.argv[2]

f = open("/app/appname", "r")
content = f.readline()
print("From execution script: Supplied arguiments are ", str(arg1), str(arg2), str(arg3), str(content))
