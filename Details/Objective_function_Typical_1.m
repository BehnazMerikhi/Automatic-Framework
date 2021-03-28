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
function Output=Objective_function_Typical_1(z,data)
data_number=length(data(:,1));
n_data_bit=length(z)/data_number;

for i=1:data_number
    w(i,:)=z((1+(i-1)*n_data_bit):i*n_data_bit);
end
x=bi2de(w)+1;

% % % % % % % % % % % % % % % % 
[Clusters,Centroids]=clustering_new_modified(x,data);
properties=Clusters_evaluator(Clusters,Centroids);

Avg_Distortion=properties(1);
Avg_distance_cluster2OtherCentroid=properties(2);
Max_Distortion=properties(3);
Min_distance_cluster2OtherCentroid=properties(4);
n_clusters=properties(5);
Deviation_Distortion=properties(6);

Output=(Avg_Distortion*n_clusters*Deviation_Distortion)/Avg_distance_cluster2OtherCentroid;

end