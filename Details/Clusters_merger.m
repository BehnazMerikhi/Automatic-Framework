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
function [clusters_updated,centroids_updated]=Clusters_merger(clusters,centroids)
clusters_updated=[];

for i=1:length(clusters)
    Cluster=clusters{i};
    Centroid=centroids(i,:);
    [Avg_Distortion(i),Max_Distortion(i)]=Cluster_evaluator(Cluster,Centroid);
end
Max_Distortion_overal=max(Max_Distortion);

index=[];
for i=1:length(clusters)
    if Max_Distortion(i)<(Max_Distortion_overal*0.9)
        index=[index i];
    end
end

clusters_selected=zeros(1,length(clusters));
for i=1:length(clusters)
    if sum(i==index)==0
        clusters_updated=[clusters_updated clusters(i)];
        clusters_selected(i)=1;
    end
end

list=[];
for i=1:length(index)
    for j=1:length(index)
        if i~=j && i<j
            D=Max_Distortion(index(i))+Max_Distortion(index(j))+distance(centroids(index(i),:),centroids(index(j),:));
            if D<Max_Distortion_overal
                list=[list; index(i) index(j)]; 
            end
        end
    end
end

if isempty(list)==0
    for i=1:length(list(:,1))
        if sum(clusters_selected(list(i,:)))==0
            data_cluster_temp=[clusters{list(i,1)}; clusters{list(i,2)}];
            clusters_updated=[clusters_updated data_cluster_temp];
            clusters_selected(list(i,:))=1;
        end
    end
end

for i=1:length(clusters_selected)
    if clusters_selected(i)==0
        clusters_updated=[clusters_updated clusters(i)];
    end  
end

centroids_updated=Centroids_finder(clusters_updated);

end