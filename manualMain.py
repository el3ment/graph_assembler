from utils import contigsSpecifiedThreshold
from utils import parseFasta
from metrics import Metrics
import sys
from tqdm import tqdm
sys.setrecursionlimit(10000)


## DECIDE KMER SIZE K AND HAMMING DISTANCE D
k = int(sys.argv[2])
threshold = int(sys.argv[3])

## OPEN FILE
fileName = sys.argv[1]
file = open("data/" + fileName, "r+")

## GET READS
headers, reads = parseFasta(file)


my_contigs = contigsSpecifiedThreshold(reads, k, threshold)

rmet = Metrics(reads)
met = Metrics(my_contigs)


print 
print "Original Number of Reads: " + str(len(reads))
print "Largest Read Size: " + str(rmet.largestContigSize())
print "Average Contig Size: " + str(met.avgContigSize())
print "Total Number of Contigs: " + str(met.numberOfContigs())
print "Largest Contig Size: " + str(met.largestContigSize())
print "N50: " + str(met.n50_measure())
print "Best Thresholds:", threshold
print "Best k:", k

with open("data/" + fileName + ".manual.contigs.txt", 'w+') as writeFile:
 	for c in my_contigs:
 		writeFile.write(c + "\n")