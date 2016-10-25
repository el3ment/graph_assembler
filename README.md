#How to run the code:
1. Place the dataset you want to use in the "data" folder
2. Run in terminal:

        $ manualMain.py dataset k threshold

####This will print to terminal:
1. Original Number of Reads
2. Largest Read Size
3. Average Contig Size
4. Total Number of Contigs
5. Largest Contig Size
6. N50
7. Best Threshold
8. Best k

And the contigs will be saved to a file called dataset.manual.contigs.txt in the "data" folder.







#de Bruijn Graph Assembler Project

As a group, you will be creating a de Bruijn graph assembler and will evaluate its performance on several datasets (including real data). Completion of the Contig Reconstruction problem is recommended as it takes care of several aspects of the assembler project. Working with your groups will be key to completing all the necessary tasks for this project and not becoming overwhelmed. Start early as some of the datasets can take a long time (hours or days) to run.

The Program

Your assembler will have to be extended for this project in the following ways:

    Read data in fasta format
    Be able to choose an arbitrary kmer size for building the graph
    Handle errors in reads
    Extra credit: Resolve branching nodes in the de Bruijn graph for longer contigs

You can assume that all reads given will be in the forward direction. Your assembly will not necessarily be reducible to 1 contig as there may be different numbers of chromosomes present.

Datasets

Here is an example dataset that you can use as a sanity check to make sure that your program is working. It consists of 9 reads and has no errors. Please verify that your assembler works on this simple example.

    example.data.fasta  Download
    example.solution.fasta  Download

There are 5 datasets that you will use for assembly:

    A small dataset (48 reads) of synthetic reads with no errors that is easily resolved: synthetic.example.noerror.small.fasta  Download
    A small dataset (93 reads) of synthetic reads with no errors: synthetic.noerror.small.fasta  Download
    A large dataset (779 reads) of synthetic reads with no errors: synthetic.noerror.large.fasta  Download
    A small dataset (102 reads) of real human reads with errors: real.error.small.fasta  Download
    A large dataset (4675 reads) of real human reads with errors: real.error.large.fasta  Download

Analysis of Performance

Include at least 3 metrics showing the performance of your assembly. Some ideas of metrics are:

    Average contig size
    N50
    Number of contigs returned
    Largest contig size

If you would like to add more metrics, you may consider reading the Assemblathon 2 paper for ideas.

Include comparisons of assemblies using different parameters (kmer size, etc.) and show how you chose your best parameters.

Comparison to Other Assemblers

You will compare your results to 2 other assemblers. Use the same metrics you used previously and compare your assembly with their assembly. Some assemblers that you might use are:

    SPAdes
    ABySS
    ALLPATHS
    EULER
    Velvet
    Newbler
    MaSuRCA

You only have to compare to two other assemblers.

BLAST the Real Data

For the real datasets, take your assembled contig and BLAST them to find where in the genome you think that they might belong to (BLAST tutorial). You can also use a different mapping program if you'd like. Please report the genes that you believe that the two real datasets belong to.

Deliverables

    A written report including:
        Method(s) used for handling errors
        Method(s) used for bridging branching nodes (if implemented)
        An analysis of the quality of your assemblies
        Comparison to another assembler
        BLAST or mapping results
        Kmer size that gave you your best assembly for each dataset
        Ideas on how your assembler might be improve
        include 2 recommendations for improving this project for next semester
    ​Attached files:
        Contigs formed for each of the datasets attached in separate files
        Include your source code as an attachment, include all files necessary to run it as well as instructions on how to run it

Presentation

The best groups will be asked to present their results to the class.

Award

There will be an award given to the group that has the best genome assembly methods and results. The award is yet to be determined.

Good luck!
