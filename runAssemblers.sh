#!/bin/bash

#file="~/projects/bio365/graph_assembler/data/example.data.fasta"

k=$1


if [ -z "$k" ]
then

echo "Please supply a k value"

else

for file in $( ls data/*.fasta ); do
    echo $file

    dir=$(echo $(basename $file) | sed "s/\.fasta//")

    mkdir -p assemblers/velvetOutput/$dir/$k

    assemblers/velvet/velveth assemblers/velvetOutput/$dir/$k $k -short $file > /dev/null
    echo -e "\nvelvet"
    tail -1 <(assemblers/velvet/velvetg assemblers/velvetOutput/$dir/$k)
    python getStats.py assemblers/velvetOutput/$dir/$k/stats.txt

#    mkdir -p assemblers/spadesOutput/$dir/$k/

#    python assemblers/spades/bin/spades.py -k $k -s $file --only-assembler -o assemblers/spadesOutput/$dir/$k -t 2 -m 2
   
#    mkdir -p assemblers/edenaOutput/$dir/
#    assemblers/edena/bin/edena -r $file -p assemblers/edenaOutput/$dir/ > /dev/null
#    echo -e "\netena"
#    tail -10 <(assemblers/edena/bin/edena -e assemblers/edenaOutput/$dir/.ovl -p assemblers/edenaOutput/$dir/)
    echo 
    echo

done

fi

