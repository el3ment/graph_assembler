import itertools

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

def mutations(word, hamming_distance, charset='ATCG'):
    # this enumerates all the positions in word
    #print word
    mutationsSet = set([word])
    for indices in itertools.combinations( range( len( word ) ), hamming_distance ):
        #print "index:", indices
        for replacements in itertools.product(charset, repeat=hamming_distance):
            #print "\treplacements:", replacements
            mutation = list(word)
            for index, replacement in zip( indices, replacements ):
                #print "\t\t", index, ":", replacement
                mutation[ index ] = replacement
                #print "\t\t\t", mutation
            mutationsSet.add("".join(mutation))
    return mutationsSet

def kmerComposition(genome, k):
	kmers = [genome[i:i+k] for i in xrange(len(genome)-k+1)]
	return sorted(kmers)

def kmersWithMismatches(genome, k, hamming_distance):
    kmers = kmerComposition(genome, k)
    finalKmers = []
    for km in kmers:
        finalKmers.extend(mutations(km, hamming_distance))
    return finalKmers

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
        prefix = km[0:len(km)-1]
        suffix = km[1:len(km)]
        if prefix in graph:
            graph[prefix].append(suffix)
        else:
            graph[prefix] = [suffix]
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
                    
def contigs(genome, k, d):
	kmers = kmersWithMismatches(genome, k, d)
	graph = debruijnGraph(kmers)

	starts = []
	for start in graph:
	    inDegree, outDegree = Degrees(graph, start)
	    if (inDegree != 1 or outDegree != 1) and outDegree > 0:
	        starts.append(start)

	contigs = []
	for start in starts:
	    contigs = paths(graph, start, contigs, "")

	return contigs

def generateContigs(reads, k, d):
    myContigs = []
    for r in reads:
        myContigs.extend(contigs(r, k, d))
    return myContigs