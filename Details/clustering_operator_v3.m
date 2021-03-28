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
function [Clusters_raw,Centroids_raw]=clustering_operator_v3(x,data)

for i=1:length(x)
    Clusters{x(i)}=[];
end

for i=1:length(x)
    Clusters{x(i)}=[Clusters{x(i)};data(i,:)];
end

j=1;
for i=1:length(Clusters)
    if isempty(Clusters{i})==0
        Clusters_raw{j}=Clusters{i};
        j=j+1;
    end
end

Centroids_raw=Centroids_finder(Clusters_raw);

end