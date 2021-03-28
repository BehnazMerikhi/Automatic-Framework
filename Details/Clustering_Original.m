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
function [Clusters,Centroids]=Clustering_Original(data)

for i=1:length(data(:,1))
    Clusters{data(i,end)}=[];  
end

for i=1:length(data(:,1))
    Clusters{data(i,end)}=[Clusters{data(i,end)}; data(i,1:end-1)];  
end

Centroids=Centroids_finder(Clusters);


end