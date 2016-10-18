from collections import defaultdict
import itertools
import numpy as np

graph = dict()
OutInDegree = {}

def kmers(string, length):
    kmers = defaultdict(int)

    for i in range(len(string) - length + 1):
        kmer = string[i:i + length]
        kmers[kmer] += 1

    return kmers

def debrujin(kmers):
    adjlist = defaultdict(list)
    for kmer in kmers:
        adjlist[kmer[0:-1]].append(kmer[1:])
    return adjlist, '\n'.join([key + ' -> ' + (','.join(sorted(adjlist[key]))) for key in sorted(adjlist.keys())])

def walk(path, curNode):
    if curNode not in graph:
        return path
    if len(graph[curNode]) == 0:
        return path
    else:
        nextNode = graph[curNode][0]
        del graph[curNode][0]
        path.append(nextNode)
        return walk(path, nextNode)


def getUnexplored(cycle):
    for i in cycle:
        if i not in graph:
            continue
        if len(graph[i]) > 0:
            return i


def mergeCycles(cycle, subcycle, insertPoint):
    insertIdx = cycle.index(insertPoint)
    return cycle[:insertIdx + 1] + subcycle + cycle[insertIdx + 1:]

def eulerian_path(input_data):
    for line in input_data:
        key, value = line.split(" -> ")
        graph[key] = [v.strip() for v in value.split(",")]
        newStart = key

        if key not in OutInDegree:
            OutInDegree[key] = [len(graph[key]), 0]
        else:
            OutInDegree[key][0] = len(graph[key])

        for inedge in graph[key]:
            try:
                OutInDegree[inedge][1] += 1
            except:
                OutInDegree[inedge] = [0, 1]

    for key, val in OutInDegree.iteritems():
        if val[0] > val[1]:
            newStart = key
            break

    cycle = walk([newStart], newStart)
    nextNode = getUnexplored(cycle)

    while nextNode is not None:
        subcycle = walk([], nextNode)
        cycle = mergeCycles(cycle, subcycle, nextNode)
        nextNode = getUnexplored(cycle)

    return '->'.join(cycle)


def eulerian_cycle(input_data):
    for line in input_data:
        key, value = line.split(" -> ")
        graph[key] = [v.strip() for v in value.split(",")]
        newStart = key

        if key not in OutInDegree:
            OutInDegree[key] = [len(graph[key]), 0]
        else:
            OutInDegree[key][0] = len(graph[key])

        for inedge in graph[key]:
            try:
                OutInDegree[inedge][1] += 1
            except:
                OutInDegree[inedge] = [0, 1]

    for key, val in OutInDegree.iteritems():
        if val[0] > val[1]:
            newStart = key
            break

    cycle = walk([newStart], newStart)
    nextNode = getUnexplored(cycle)

    while nextNode is not None:
        subcycle = walk([], nextNode)
        cycle = mergeCycles(cycle, subcycle, nextNode)
        nextNode = getUnexplored(cycle)

    return '->'.join(cycle)

def string_reconstruction(input_data):
    global graph, OutInDegree
    graph = dict()
    inOutDegree = {}

    k = int(input_data[0])
    _, graph_string = debrujin(input_data[1:])
    _cycle = eulerian_cycle(graph_string.split('\n'))

    response = _cycle[:k-1]
    for node in _cycle.split("->")[1:]:
        response += node[-1]

    return response