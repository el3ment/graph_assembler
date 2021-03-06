//***************************************************************************
//* Copyright (c) 2016 Saint Petersburg State University
//* All Rights Reserved
//* See file LICENSE for details.
//***************************************************************************

#include "data_structures/indices/edge_index_builders.hpp"
#include "data_structures/indices/edge_multi_index.hpp"
#include "assembly_graph/graph_core/graph.hpp"

#include "edge_index_refiller.hpp"

namespace debruijn_graph {

using EdgeIndex = KmerFreeEdgeIndex<ConjugateDeBruijnGraph, runtime_k::RtSeq, kmer_index_traits<runtime_k::RtSeq>>;

template<>
void EdgeIndexRefiller::Refill(EdgeIndex &index,
                               const ConjugateDeBruijnGraph &g) {
    typedef typename EdgeIndexHelper<EdgeIndex>::GraphPositionFillingIndexBuilderT IndexBuilder;
    IndexBuilder().BuildIndexFromGraph(index, g);
}

using PacIndex = DeBruijnEdgeMultiIndex<ConjugateDeBruijnGraph::EdgeId>;

template<>
void EdgeIndexRefiller::Refill(PacIndex &index,
                               const ConjugateDeBruijnGraph &g) {
    typedef typename debruijn_graph::EdgeIndexHelper<PacIndex>::GraphPositionFillingIndexBuilderT Builder;
    Builder().BuildIndexFromGraph(index, g);
}

}
