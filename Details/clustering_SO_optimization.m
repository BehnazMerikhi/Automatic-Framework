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
function [Clusters,Centroids]=clustering_SO_optimization(data,k_max)

[gBest]=clustering_SO_optimization_InternalFunction(data,k_max);

    z=gBest;
	data_number=length(data(:,1));
    n_data_bit=length(z)/data_number;

    for i=1:data_number
        w(i,:)=z((1+(i-1)*n_data_bit):i*n_data_bit);
    end
    x=bi2de(w)+1;
    % % % % % % % % % % % % % % % % 
    [Clusters,Centroids]=clustering_new_modified(x,data);
end