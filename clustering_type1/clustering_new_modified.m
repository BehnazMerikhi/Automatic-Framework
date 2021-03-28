%--------------------------------------------------------------------
%  Source code for the exapmle 1 of the paper 			 			%
%  version 1.0   													%
%  Developed in MATLAB R2018a(9.4.0.813654)                        	%
%  																	%
%  Programmer: Behnaz Merikhi                            			%
%  e-Mail: behnaz.merikhi@concordia.ca                       		%
%                                                                   %
%  Paper: B. MErikhi, M. R. Soleymani								%
%		"Automatic Data Clustering Framework Using 					%
%		 Nature-Inspired Binary Optimization Algorithms"			%
%		 submitted to IEEE Access Journal on March 2021   			%
%                                                                   %
%--------------------------------------------------------------------
function [clusters5,centroids5]=clustering_new_modified(x,data)
clustering_type=1;


if clustering_type==1
    [clusters,centroids]=clustering_operator_v3(x,data);

    clusters5=clusters;
    centroids5=centroids;
elseif clustering_type==2
    [clusters,centroids]=clustering_operator_v3(x,data);
    
    % % % % clusters modifiction
    [clusters2]=clustering_operator_v4(centroids,data);
    centroids2=Centroids_finder(clusters2);

    clusters5=clusters2;
    centroids5=centroids2;
elseif clustering_type==3
	[clusters,centroids]=clustering_operator_v3(x,data);
    
    % % % % clusters modifiction
    [clusters2]=clustering_operator_v4(centroids,data);
    centroids2=Centroids_finder(clusters2);

    [clusters3]=clustering_operator_v4(centroids2,data);
    centroids3=Centroids_finder(clusters3);

    while (1)
        [clusters4,centroids4]=Clusters_merger(clusters3,centroids3);

        [clusters5]=clustering_operator_v4(centroids4,data);
        centroids5=Centroids_finder(clusters5);

        if length(centroids5(:,1))==length(centroids3(:,1))
            if sum(sum(abs(centroids5-centroids3)))==0
                break
            end
        end

        clusters3=clusters5;
        centroids3=centroids5;
    end
end

end