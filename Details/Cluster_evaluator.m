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
function [Avg_Distortion,Max_Distortion]=Cluster_evaluator(Cluster,Centroid)

data=Cluster; 
for j=1:length(data(:,1))
	Distortion_temp1(j)=distance(data(j,:),Centroid);
end
Avg_Distortion=sum(Distortion_temp1)/length(Distortion_temp1);
Max_Distortion=max(Distortion_temp1);

end

