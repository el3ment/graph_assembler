import numpy as np


class Metrics:

	def __init__(self, contigs):
		self.contigs = np.array(contigs)
		self.lenContigs = self.convertToLengths()

	def convertToLengths(self):
		return np.array(map(lambda c: len(c), self.contigs))

	def avgContigSize(self):
		return np.mean(self.lenContigs)

	def numberOfContigs(self):
		return len(self.contigs)

	def largestContigSize(self):
		return np.max(self.lenContigs)

	def n50(self):
		pass