#!/bin/bash

#file="~/projects/bio365/graph_assembler/data/example.data.fasta"

for file in $(ls data/*.fasta"); do
    
    dir=$(echo $(basename $file) | sed "s/\.fasta//")

    echo "assemblers/velvet/velveth assemblers/velvetOutput/$dir 21 -short $file"
    echo "assemblers/velvet/velvetg assemblers/velvetOutput/$dir/"

    echo "mkdir -p assemblers/edenaOutput/$dir/ && assemblers/edena/bin/edena -r $file -p assemblers/edenaOutput/$dir/"
    echo "assemblers/edena/bin/edena -e assemblers/edenaOutput/$dir/.ovl -p assemblers/edenaOutput/$dir/"

done
