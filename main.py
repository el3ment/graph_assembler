from collections import defaultdict
import itertools
import numpy as np



class Graph:
    graph = dict()
    OutInDegree = {}

    def __init__(self, k):
        self.k = k

    def kmers(self, string, length):
        kmers = defaultdict(int)

        for i in range(len(string) - length + 1):
            kmer = string[i:i + length]
            kmers[kmer] += 1

        return kmers

    def debrujin(self, kmers):
        adjlist = defaultdict(list)
        for kmer in kmers:
            adjlist[kmer[0:-1]].append(kmer[1:])

        return adjlist

    def walk(self, path, current):
        if current not in self.graph:
            return path

        if len(self.graph[current]) == 0:
            return path

        else:
            nextNode = graph[current][0]
            del self.graph[current][0]

            path.append(nextNode)
            return self.walk(path, nextNode)

    def get_unexplored(self, cycle):
        for i in cycle:
            if i in self.graph and len(self.graph[i]) > 0:
                return i

    def merge_cycles(self, cycle, subcycle, insert_point):
        idx = cycle.index(insert_point)
        return cycle[:idx + 1] + subcycle + cycle[idx + 1:]

    # def eulerian_path(self, input_data):
    #     for line in input_data:
    #         key, value = line.split(" -> ")
    #         graph[key] = [v.strip() for v in value.split(",")]
    #         newStart = key
    #
    #         if key not in OutInDegree:
    #             OutInDegree[key] = [len(graph[key]), 0]
    #         else:
    #             OutInDegree[key][0] = len(graph[key])
    #
    #         for inedge in graph[key]:
    #             try:
    #                 OutInDegree[inedge][1] += 1
    #             except:
    #                 OutInDegree[inedge] = [0, 1]
    #
    #     for key, val in OutInDegree.iteritems():
    #         if val[0] > val[1]:
    #             newStart = key
    #             break
    #
    #     cycle = self.walk([newStart], newStart)
    #     nextNode = self.get_unexplored(cycle)
    #
    #     while nextNode is not None:
    #         subcycle = self.walk([], nextNode)
    #         cycle = self.merge_cycles(cycle, subcycle, nextNode)
    #         nextNode = self.get_unexplored(cycle)
    #
    #     return cycle

    def eulerian_cycle(self, input_data):
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

        cycle = self.walk([newStart], newStart)
        nextNode = self.get_unexplored(cycle)

        while nextNode is not None:
            subcycle = walk([], nextNode)
            cycle = mergeCycles(cycle, subcycle, nextNode)
            nextNode = getUnexplored(cycle)

        return '->'.join(cycle)

    def string_reconstruction(self, input_data):
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