import itertools
from collections import Counter
from tqdm import tqdm
import numpy as np

def parseFasta(file):
    headers = []
    reads = []
    everyOther = 0
    for line in file:
        if everyOther % 2 == 0:
            headers.append(line.strip())
        else:
            reads.append(line.strip())
        everyOther += 1
    return headers, reads

def kmerComposition(genome, k):
    kmers = [genome[i:i+k] for i in xrange(len(genome)-k+1)]
    return kmers

def Degrees(graph, start):
    if start in graph:
        outDegree = len(graph[start])
    else:
        outDegree = 0
    inDegree = 0
    for key, nodes in graph.items():
        for ins in graph[key]:
            if start == ins:
                inDegree += 1
    return inDegree, outDegree

def debruijnGraph(kmers):
    graph = {}
    for km in kmers:
        prefix = km[0:-1]
        suffix = km[1:]
        if prefix in graph:
            graph[prefix].add(suffix)
        else:
            graph[prefix] = set([suffix])
    return graph

def branchNodes(graph, node):
    nonbranching = []
    branching = []
    for newNode in graph[node]:
        inDegree, outDegree = Degrees(graph, newNode)
        if outDegree == 1 and inDegree ==1:
            nonbranching.append(newNode)
        else:
            branching.append(newNode)
    return nonbranching, branching

def paths(graph, start, contigs, toAppend):
    nonbranching, branching = branchNodes(graph, start)
    contigs.extend([toAppend + start[0] + i for i in branching])
    if len(nonbranching) > 0:
        toAppend += start[0]
        for node in nonbranching:
            contigs = paths(graph, node, contigs, toAppend)
    return contigs

def filterKmers(kmers):
    threshold = int(otsu([x[1] for x in Counter(kmers).items()], 100))
    return [x[0] for x in Counter(kmers).items() if x[1] > threshold], threshold

def otsu(image, bins=255):
    histogram, edges = np.histogram(image, bins)
    n1, n2, u1, u2 = 0.0, histogram.sum(), 0.0, histogram.mean()
    thresholds = []
    for t in range(bins):
        thresholds.append(((n1 * n2 * (u1 - u2)**2), t))
        u1 = (u1 * n1 + histogram[t] * t)/(n1 + histogram[t])
        u2 = (u2 * n2 - histogram[t] * t)/(n2 + histogram[t])
        n1 += histogram[t]
        n2 -= histogram[t]
        
    return edges[max(thresholds)[1]]
                    
def contigs(reads, k):
    kmers = []
    for genome in reads:
        kmers.extend(kmerComposition(genome, k))
    kmers, threshold = filterKmers(kmers)

    graph = debruijnGraph(kmers)
    starts = []
    for start in graph:
        inDegree, outDegree = Degrees(graph, start)
        if (inDegree != 1 or outDegree != 1) and outDegree > 0:
            starts.append(start)
    contigs = []
    for start in starts:
        contigs = paths(graph, start, contigs, "")
    return contigs, threshold

def filterKmersGivenThreshold(kmers, threshold):
    return [x[0] for x in Counter(kmers).items() if x[1] > threshold]

def contigsSpecifiedThreshold(reads, k, threshold):
    kmers = []
    for genome in reads:
        kmers.extend(kmerComposition(genome, k))
    kmers = filterKmersGivenThreshold(kmers, threshold)

    graph = debruijnGraph(kmers)
    starts = []
    for start in tqdm(graph):
        inDegree, outDegree = Degrees(graph, start)
        if (inDegree != 1 or outDegree != 1) and outDegree > 0:
            starts.append(start)
    contigs = []
    for start in tqdm(starts):
        contigs = paths(graph, start, contigs, "")
    return contigs
