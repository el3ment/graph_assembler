#!/bin/bash

#file="~/projects/bio365/graph_assembler/data/example.data.fasta"

k=$1


if [ -z "$k" ]
then

echo "Please supply a k value"

else

for file in $( ls data/*.fasta ); do

    dir=$(echo $(basename $file) | sed "s/\.fasta//")

    mkdir -p assemblers/velvetOutput/$dir/$k

    assemblers/velvet/velveth assemblers/velvetOutput/$dir/$k $k -short $file > /dev/null
    tail -1 <(assemblers/velvet/velvetg assemblers/velvetOutput/$dir/$k)

    # echo "mkdir -p assemblers/edenaOutput/$dir/ && assemblers/edena/bin/edena -r $file -p assemblers/edenaOutput/$dir/"
    # echo "assemblers/edena/bin/edena -e assemblers/edenaOutput/$dir/.ovl -p assemblers/edenaOutput/$dir/"

done

fi

