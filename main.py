from utils import contigs
from utils import parseFasta
from metrics import Metrics
import sys
from tqdm import tqdm
sys.setrecursionlimit(10000)


## DECIDE KMER SIZE K AND HAMMING DISTANCE D
start = int(sys.argv[2])

## OPEN FILE
fileName = sys.argv[1]
file = open("data/" + fileName, "r+")

## GET READS
headers, reads = parseFasta(file)
rmet = Metrics(reads)

## GET CONTIGS

all_metrics, all_contigs, ks, thresholds  = [], [], [], []
for k in tqdm(range(start, rmet.largestContigSize())):
    iteration_contigs, threshold = contigs(reads, k)
    all_contigs.append(iteration_contigs)
    all_metrics.append(Metrics(iteration_contigs).largestContigSize())
    ks.append(k)
    thresholds.append(threshold)    

_, best_contigs, best_k, best_threshold = max(zip(all_metrics, all_contigs, ks, thresholds))
met = Metrics(best_contigs)

# '''
# with open("data/" + fileName + ".processed.txt", 'w+') as writeFile:
# 	writeFile.write("Original Number of Reads: " + str(len(reads)) + "\n")
# 	writeFile.write("Largest Read Size: " + str(rmet.largestContigSize()) + "\n")
# 	writeFile.write("Average Contig Size: " + str(met.avgContigSize()) + "\n")
# 	writeFile.write("Total Number of Contigs: " + str(met.numberOfContigs()) + "\n")
# 	writeFile.write("Largest Contig Size: " + str(met.largestContigSize()) + "\n")
# 	writeFile.write("N50: " + str(met.n50_measure()) + "\n")
# 	writeFile.write("----------------------------" + "\n")
	
# '''

print 
print "Original Number of Reads: " + str(len(reads))
print "Largest Read Size: " + str(rmet.largestContigSize())
print "Average Contig Size: " + str(met.avgContigSize())
print "Total Number of Contigs: " + str(met.numberOfContigs())
print "Largest Contig Size: " + str(met.largestContigSize())
print "N50: " + str(met.n50_measure())
print "Best Thresholds: ", best_threshold
print "Best k:", best_k

with open("data/" + fileName + ".contigs.txt", 'w+') as writeFile:
 	for c in best_contigs:
 		writeFile.write(c + "\n")
