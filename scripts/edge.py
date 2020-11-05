#!/usr/bin/env python3
import sys

lines = [x.strip() for x in sys.stdin]
print ('"start_date":"%s",' % lines[0])
print ('"stop_date":"%s"' % lines[-1])
