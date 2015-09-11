# UCSBDataScienceBootcamp2015

This is a collection of material from the course IGERT Data and Network Science bootcamp, held at UCSB from 9/8/2015 to 9/18/2015.
The goal of the course is to introduce students of the IGERT program to data science. The data science methods and concepts presented will mainly be oriented to analyzing networks and networks science in general.

## Instructors

  - Please provide a general outline in the syllabus below filling in the part pertaining to your session, following the example for Day 1.
  - Please add any relevant material to the folder that has been set up for your module (and linked from the syllabus)
   * Try to be compliant to the directory structure of Day 1 as much as possible.
   * Provide a detailed goal description and outline in the Readme.md file in the module folder following the example for Day 1
  
## Trainees

To get started  follow the intructions here:
[Course setup](../..//tree/master/setup.md)

# Syllabus

## [Computer Basics (Day 1)](../..//tree/master/Day01_ComputerBasics)

  - Unix Basics
    - How to open and use the terminal
    - How to connect to Unix servers (ssh)
    - Text manipulation and command-line magic
  - Git
    - The importance of version control
    - Github, reproducibility and the scientific method
  - Python and Jupyter notebooks
    - Introduction to Python
    - Jupyter (née IPython) notebooks
    - Will be used throughout rest of the bootcamp
 
## [Everything Data (Day 2)](../..//tree/master/Day02_EverythingData)

  - What is data? Data representation in a computer
  - Native data types in Python: integer, list, dict, numpy arrays, pandas 
  - From simple to complex: text, time series, networks, geometric objects
  - Discuss complexity of manipulation of these objects. 
  - Load and visualize different datasets on Python.

## [Small Data, Big Data (Day 2)](../..//tree/master/Day02_WhatIsBigData)

  - Small data, big data. Do you really have big data? 
  - Storage latencies. cache/ram/SSD/Redis/s3 
  - Computation engines: single core, multi-core, memory distributed, disk distributed. Pandas, numpy multi-core extensions
  - Examples: single-machine SSD-backed operation. Caveats (sequential access needed)

## [Visualization I (Day 3)](../..//tree/master/Day03_Vizualization1)

  - Introduction to Visualization
      -visual variables, design, types etc.
  - Visualization of Social Media Data (Demos and Techniques)    
  - Visualizing Live Twitter Data with Python and D3JS (Hands-on Project)
  

## [Visualization II (Day 3)](../..//tree/master/Day03_Vizualization2)
  - Visual Analytics
  - Visualizing live feeds using Python and Plot.ly (Hands-on)
  - Interactive Visualization (Demo)
  - Visualization in Academia and Industry
  - Anatomy of a research paper in Visualization
  
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

## [Graph Algorithms I (Day 5)](../..//tree/master/Day06_GraphAlgorithms1)

  - Graph definitions (directed, undirected, weighted, unweighted, trees, cycles, bipartite, complete) etc…
  - Graph representations (adjacency matrix, adjacency list); pros and cons; 
  - Graph generation: Erdos-Renyi model
  - Simple graph definition in Python NetworkX

## [Graph Algorithms II (Day 6)](../..//tree/master/Day06_GraphAlgorithms2)

  * Algorithms on Graphs.
  * Introduction to special classes of graphs
  * Demonstration of a few algorithms above in networkX
  * Examples in NetworkX on real networks (social, brain)
  * Preferential attachment
  * Small-world networks
  * Hands-on
     * Generating and characterizing several graphs (both synthetic and real)
     * Counting triangles
     * Visualization using GraphViz

## [Dynamical Systems (Day 6)](../..//tree/master/Day06_DynamicalSystems)

 - Introduction to dynamics
 - Why is it important to study dynamics on networks? 
 - First order dynamics - flows on a line
 - Linear vs nonlinear dynamics
 - Stability analysis -an intuitive explanation
 - Lyapunov equations - an intuitive explanation
 - Introduction to second order dynamics
 - Eigenvalues and eigenvectors, stability
 - Introduction to bifurcations and hysteresis

## [Foundations of Statistics (Day 7)](../..//tree/master/Day07_Stats)

  - Basic probability and combinatorics. 
  - Bernoulli trials. Expectation. Variance. Tail bounds.
  - Significance and p-values
  - Regression, controlling, example in R

## [Introduction to Machine Learning (Day 7)](../..//tree/master/Day07_MachineLearning1)

  - Supervised learning 
	* Decision Tree and Random Forest
	* Linear Regression and Support Vector Machine
	* Logistic Regression and Neural Network
 
  - Unsupervised learning
	* k-Means, k-Medoids, and Hierarchical Clustering
	* Mixture Modeling

## [Machine Learning on Graphs (Day 8)](../..//tree/master/Day07_MachineLearning2)

  - Classification on graphs
  - Community detection
  - Frequent patterns

## [Hands-on Machine Learning (Day 8)](../..//tree/master/Day08_MachineLearning3)

  - Fun with scikit-learn. 
  - Deep learning example
