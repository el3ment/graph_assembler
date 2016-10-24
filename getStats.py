#!/usr/bin/env python

import sys

with open(sys.argv[1], 'r') as in_file:
    header = in_file.readline()
    total = 0
    num = 0
    for line in in_file:
        line = line.strip().split('\t')
        total += int(line[1])
        num += 1
    if num > 0:
        print "Average contig size", total / float(num)
    else:
        print "No contigs found"
