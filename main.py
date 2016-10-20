from utils import contigs
from utils import parseFasta
from metrics import Metrics
import sys
sys.setrecursionlimit(1500)


## DECIDE KMER SIZE K AND HAMMING DISTANCE D
k = int(sys.argv[2])
#d = int(sys.argv[3])
## OPEN FILE
fileName = sys.argv[1]
file = open("data/" + fileName, "r+")

## GET READS
headers, reads = parseFasta(file)

## GET CONTIGS
myContigs = contigs(reads, k)

## PRINT STATS FOR OUT CONTIGS
met = Metrics(myContigs)
rmet = Metrics(reads)

'''
with open("data/" + fileName + ".processed.txt", 'w+') as writeFile:
	writeFile.write("Original Number of Reads: " + str(len(reads)) + "\n")
	writeFile.write("Largest Read Size: " + str(rmet.largestContigSize()) + "\n")
	writeFile.write("Average Contig Size: " + str(met.avgContigSize()) + "\n")
	writeFile.write("Total Number of Contigs: " + str(met.numberOfContigs()) + "\n")
	writeFile.write("Largest Contig Size: " + str(met.largestContigSize()) + "\n")
	writeFile.write("N50: " + str(met.n50_measure()) + "\n")
	writeFile.write("----------------------------" + "\n")
	
'''
print "Original Number of Reads: " + str(len(reads))
print "Largest Read Size: " + str(rmet.largestContigSize())
print "Average Contig Size: " + str(met.avgContigSize())
print "Total Number of Contigs: " + str(met.numberOfContigs())
print "Largest Contig Size: " + str(met.largestContigSize())
print "N50: " + str(met.n50_measure())

with open("data/" + fileName + ".contigs.txt", 'w+') as writeFile:
	for c in myContigs:
		writeFile.write(c + "\n")