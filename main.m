%--------------------------------------------------------------------
%  Source code for the exapmle 1 of the paper 			 			%
%  version 1.0   													%
%  Developed in MATLAB R2018a(9.4.0.813654)                        	%
%  																	%
%  Programmer: Behnaz Merikhi                            			%
%  e-Mail: behnaz.merikhi@concordia.ca                       		%
%                                                                   %
%  Paper: B. Merikhi, M. R. Soleymani								%
%		"Automatic Data Clustering Framework Using 					%
%		 Nature-Inspired Binary Optimization Algorithms"			%
%		 submitted to IEEE Access Journal on March 2021   			%
%                                                                   %
%--------------------------------------------------------------------


clear all
clc
close all

Path_Folder=pwd;

addpath([Path_Folder,'/BBA']);
addpath([Path_Folder,'/Details']);


source_dataset_name='Dataset';

data_imported=importdata([source_dataset_name,'.txt']);
[Clusters,Centroids]=Clustering_Original(data_imported);

%%
Clusters_plot_2D(Clusters,Centroids);
properties=Clusters_evaluator(Clusters,Centroids);

data=data_imported(:,1:end-1);

k_max=16;

%%

addpath([Path_Folder,'/clustering_type1']);
[clusters1,centroids1]=clustering_SO_optimization(data,k_max);
rmpath([Path_Folder,'/clustering_type1']);

addpath([Path_Folder,'/clustering_type2']);
[clusters1,centroids1]=clustering_SO_optimization(data,k_max);
rmpath([Path_Folder,'/clustering_type2']);

addpath([Path_Folder,'/clustering_type3']);
[clusters1,centroids1]=clustering_SO_optimization(data,k_max);
rmpath([Path_Folder,'/clustering_type3']);






