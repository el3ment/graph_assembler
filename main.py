from utils import generateContigs
from utils import parseFasta
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

## PRINT CONTIGS
for c in myContigs:
	print c