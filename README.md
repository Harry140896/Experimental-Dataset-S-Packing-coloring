# Experimental-Dataset-S-Packing-coloring

This Repository contains all the datasets and the programs used for studying the running time analysis of 
S-packing coloring of small graphs, with k colors. 

We have implemented and compared the algorithms for the problem of S-packing k-coloring on given finite
Graph G using OSS: Sagemath and Macaulay2. Using the Macaulay2 interface available in Sagemath, Macaulay2
computations were done. We have studied five algorithms, with randomly generated test dataset and study 
some graphs that work optimally for certain algorithms.  

In order to get a consistent result, we have run all the graphs and algorithms on the same Linux machine 
with a 2.6 GHz Intel Xeon CPU.

The five algorithms that is compared are Direct Containment algorithm (DC), Elimination-Ideal-Membership (EIM),
Cover-Ideal-Membership(CIM), Covering-Set algorithm (CS) and the algorithm given in "Gr¨obner bases techniques 
for an S-packing k-coloring of a graph" by Hamid Maarouf (Maar). In each of the algorithms, the input is a graph 
and a positive integer k. Although all the algorithms can be simulated in the general case of S-packing coloring, 
here, we shall run the algorithms for a particular case of broadcast coloring, i.e., when S = (1,2,3,...).


**DataSet Generation:**  Using the RandomTree() command, Trees1 dataset is generated and using RandomGNM()
command, RGraphs1, RGraphs2 datasets are generated. Each dataset consists of randomly generated graphs, 
containing 10 graphs with the same fixed number of vertices. Trees1 dataset contains graphs with 
number of vertices ranging from 8 to 11, while RGraphs1 and RGraphs2 has number of vertices ranging 
from 6 to 10. The number of edges in RGraphs1 and RGraphs2 is chosen to be a random number between the 
number of vertices and 5 more than the number of vertices. This will ensure that the graphs are not too
sparse nor are they dense, therefore their broadcast chromatic number will be more interesting to compute. 
Moreover, all the graphs generated are ensured to be connected. 


**Folder Contents:**

**Input methods:** This folder contains two input files. They contain the member functions that will output the running 
time of the graphs with respect to packing coloring: where the input is a graph with a specific number of colors specified.

**Input Datasets:** This folder contains three datasets. The input datasets of Random Graphs are generated 
on Sagemath using the Random Graph Generators, by specifying the required number of vertices. The Sage 
Commands used to generate the graphs are RandomTree() and RandomGNM(). The RandomTree() command requires
only the number of vertices as an input to construct a random tree. On the other hand RandomGNM() 
command, on input given as n,m, for some natural numbers, returns a graph randomly from the set of 
all graphs having n vertices and m edges.  


**All Outputs:** This folder contains the result of the experiments conducted. 

**Examples:** This folder contains some miscelleneous files, which were used in the initial stages of the experiments 
to gather some intuition. This also contains another dataset generated in Sagemath.
