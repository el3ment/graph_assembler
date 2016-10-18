from utils import generateContigs
from utils import parseFasta
from metrics import Metrics
import sys


## DECIDE KMER SIZE K AND HAMMING DISTANCE D
k = int(sys.argv[2])
d = int(sys.argv[3])
## OPEN FILE
fileName = sys.argv[1]
file = open("data/" + fileName, "r+")

## GET READS
headers, reads = parseFasta(file)

## GET CONTIGS
myContigs = generateContigs(reads, k, d)

## PRINT STATS FOR OUT CONTIGS
met = Metrics(myContigs)
rmet = Metrics(reads)
print
print
print "Original Number of Reads:", len(reads)
print "Largest Read Size:", rmet.largestContigSize()
print "Average Contig Size:", met.avgContigSize()
print "Total Number of Contigs:", met.numberOfContigs()
print "Largest Contig Size:", met.largestContigSize()
#for c in myContigs:
#	print c