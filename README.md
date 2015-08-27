# UCSBDataScienceBootcamp2015

This is a collection of material from the course IGERT Data and Network Science bootcamp, held at UCSB from 9/8/2015 to 9/18/2015.
The goal of the course is to introduce students of the IGERT program to data science. The data science methods and concepts presented will mainly be oriented to analyzing networks and networks science in general.

## Instructors

  - Please provide a general outline in the syllabus below filling in the part pertaining to your session, following the example for Day 1.
  - Please add any relevant material to the folder that has been set up for your module (and linked from the syllabus)
   * Try to be compliant to the directory structure of Day 1 as much as possible.
   * Provide a detailed goal description and outline in the Readme.md file in the module folder following the example for Day 1
  
## Trainees

  - Please check out the repository on your local computer
  - Run the 'set_path.sh' script if using a computer from the Cooper lab

# Syllabus

## [Computer Basics (Day 1)](../..//tree/master/Day01_ComputerBasics)

  - Unix, terminal, ssh, textutils
  - Introduce github, reproducibility and scientific method. Version control everything you do.
  - Open source your data and code whenever you can.
  - Introduction to Python on IPython notebook.
 
## [Everything Data (Day 2)](../..//tree/master/Day02_EverythingData)

  - What is data? Data representation in a computer
  - Native data types in python: integer, list, dict, numpy arrays, pandas 
  - From simple to complex: text, time series, networks, geometric objects
  - Discuss complexity of manipulation of these objects. 
  - Load and visualize different datasets on python

## [Small Data, Big Data (Day 2)](../..//tree/master/Day02_WhatIsBigData)

  - Small data, big data. Do you really have big data? 
  - Storage latencies. cache/ram/SSD/Redis/s3 
  - Computation engines: single core, multi-core, memory distributed, disk distributed. Pandas, numpy multi-core extensions
  - Examples: single-machine SSD-backed operation. Caveats (sequential access needed)

## [Visualization I (Day 3)](../..//tree/master/Day03_Vizualization1)

  - Perhaps some introductory words on viz (e.g., the "talk" section of [Bret Victor](http://worrydream.com/)) 
  - tableau public for some quick exploratory insights on small dataset
  - python matplotlib/seaborn example
  - python bokeh server for interactive plotting (all the course will be based on ipython notebooks) 

## [Visualization II (Day 3)](../..//tree/master/Day03_Vizualization2)

  - D3.js, dimple.js, three.js
  - Ad-hoc visualization of complex data: ?  
  - Network data: processing? Prefuse?
  - Some words on more interactive visualizations.

## [Linear Algebra (Day 4)](../..//tree/master/Day04_LinearAlgebra)

  * Review of Linear Algebra's Fundamentals
    * Matrix algebra
    * Vector spaces
    * Angles, lengths, projection
    * Eigenproblem, SVD

  * Linear Algebra and Graphs
    * Graphs: definitions, properties, representation
    * Graph algorithms in the language of linear algebra
    * Spectral graph theory

## [Introduction to Algorithms (Day 5)](../..//tree/master/Day05_AlgorithmBasics)

  - Basic data structures:  arrays, lists, balanced binary trees (sets), hash tables (dicts); 
  - some organized/categorial view of what each of these data structures are good for, and how they compare in cost/benefit
  - NP Hardness (TSP vs Eulerian Path)

## [Graph Algorithms I (Day 6)](../..//tree/master/Day06_GraphAlgorithms1)

  - Graph definitions (directed, undirected, weighted, unweighted, trees, cycles, bipartite, complete) etc…
  - Graph representations (adjacency matrix, adjacency list); pros and cons; 
  - Graph generation: Erdos-Renyi model
  - Simple graph definition in Python NetworkX

## [Graph Algorithms II (Day 6)](../..//tree/master/Day06_GraphAlgorithms2)

  - Algorithms on Graphs.
  - Connectivity SP: directed & undirected, Diameter, BFS/DFS, single source, all pairs shortest paths
  - Diameter, BC, partitioning
  - Example on how to compute the above in NetworkX (+ visualization) 
  - Examples in NetworkX on real networks (social, brain)
  - Random graphs
  - Preferential attachment
  - Small-world networks
  - Large-scale and dynamics of real graphs (Web, facebook etc.)
  - Activities: Generating and characterizing several graphs (both synthetic and real)., counting triangles. Visualization using graphViz

## [Dynamical Systems (Day 6)](../..//tree/master/Day06_DynamicalSystems)

  - Different Networks:
	- Play around with a given discrete-time linear dynamical system
  - Modeling: Learn how to implement a discrete-time linear dynamical system with and without available Matlab commands/functions
  - Visualization: Make plots of discrete-time linear dynamical system trajectory and eigenvalues with and without available Matlab commands/functions

## [Foundations of Statistics (Day 7)](../..//tree/master/Day07_Stats)

  - Basic probability and combinatorics. 
  - Bernoulli trials. Expectation. Variance. Tail bounds.
  - Significance and p-values
  - Regression, controlling, example in R

## [Introduction to Machine Learning (Day 7)](../..//tree/master/Day07_MachineLearning1)

  - Supervised/unsupervised learning
  - Regression/binary classification
  - SVM, decision trees, random forest
  - Clustering (k-means, NN-clustering)

## [Machine Learning on Graphs (Day 8)](../..//tree/master/Day07_MachineLearning2)

  - Machine learning on graphs
  - Community detection
  - Frequent itemsets

## [Hands-on Machine Learning (Day 8)](../..//tree/master/Day08_MachineLearning3)

  - Fun with scikit-learn. 
  - Deep learning example
