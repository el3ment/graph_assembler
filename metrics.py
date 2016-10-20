import numpy as np
class Metrics:
    def __init__(self, contigs):
        self.contigs = contigs
        self.contigs = self.sortDescendingLengths()
        self.lenContigs = self.convertToLengths()
        self.totalLength = self.getTotalLength()

    def sortDescendingLengths(self):
        return sorted(self.contigs, key=len, reverse=True)

    def convertToLengths(self):
        return np.array(map(lambda c: len(c), np.array(self.contigs)))

    def getTotalLength(self):
        return sum(self.lenContigs)

    def avgContigSize(self):
		return np.mean(self.lenContigs)

    def numberOfContigs(self):
		return len(self.contigs)

    def largestContigSize(self):
		return np.max(self.lenContigs)

    def n50_measure(self):
        running_sum = 0
        halfTotalLength = self.totalLength / 2.0
        for cLength in self.lenContigs:
            if running_sum >= halfTotalLength:
                return cLength
            running_sum += cLength
        return -1
