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
function [Clusters_raw]=clustering_operator_v4(Centroids,data)

for i=1:length(Centroids(:,1))
    Clusters{i}=[];  
end

for i=1:length(data(:,1))
    clear D
    for j=1:length(Centroids(:,1))
        D(j)=distance(data(i,:),Centroids(j,:));
    end
    [value,Index]=min(D);
    Clusters{Index}=[Clusters{Index}; data(i,:)];  
end

j=1;
for i=1:length(Clusters)
    if isempty(Clusters{i})==0
        Clusters_raw{j}=Clusters{i};
        j=j+1;
    end
end

end