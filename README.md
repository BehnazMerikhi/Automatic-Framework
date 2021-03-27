# Automatic Data Clustering Framework 
This code is shared for the research purposes only. 

Revision 1.0. 

It is part of an ongoing research and we will keep the repository updated during the rest of the research.

## Overview

This code represents the process of evolving clusters and migration of data points to other groups during different stages under a proposed framework called "Automatic Data Clustering Framework Using Nature-Inspired Binary Optimization Algorithms". The proposed method is recently submitted to the IEEE Access Journal and it is still under the review process.

This framework is a part of an ongoing reserach in automatic data clustering for correlated content and another related reserach in the area of the cache-aided networks.
We will keep this repository updated during the next stages, and we may publicly release the rest of the code after finishing the next research for the purpose of reproducibility. 

## About 
This experiment shows the performance of the proposed framework on a small scale by using the BBA optimizer module with 100 agents and 200 iterations. 

Fig (a) represent the used dataset. Fig (b) shows the result of initial clustering, where an initial cluster number is assigned to each data point. Fig (c) and (d) show the result of clustering after two levels of re-clustering. Although the clusters are distinguishable in this stage, the smallest cluster and the largest cluster still have a considerable size difference. During Stages (e) to (h), the process of merging and modifying the small clusters is performed, and the result is evaluated according to output. As can be seen, the proposed framework provides a sufficient number of compact and well-separated clusters with relatively close values for maximum distortion.

![image](https://user-images.githubusercontent.com/12595842/112735401-12ae3980-8f22-11eb-8bcc-0c339b6c70fb.png)

## User Guide

This code should work on Windows or Linux, on MATLAB software.
1. Clone the Git repository from GitHub
2. Run `main.m` file located in the root folder.
3. You can see the final result after a few iterations. 

## Acknowledgment
Please use the followings to acknowledge use of this framework in your publications:

+ https://github.com/BehnazMerikhi/Automatic-Framework

  B. Merikhi, M. R. Soleymany, "Automatic Data Clustering Framework Using Nature-Inspired Binary Optimization Algorithms"

+ S. Mirjalili, S. M. Mirjalili, and X.-S. Yang, “Binary bat algorithm,”
Neural Comput & Applic, vol. 25, no. 3–4, pp. 663–681, Sep. 2014,
doi: 10.1007/s00521-013-1525-5.


Feel free to contact me (the corresponding author) in case you have further questions.
