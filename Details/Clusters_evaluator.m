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
function Output=Clusters_evaluator(Clusters,Centroids)

for i=1:length(Clusters)
    data=Clusters{i}; 
    clear Distortion_temp1
    for j=1:length(data(:,1))
        Distortion_temp1(j)=distance(data(j,:),Centroids(i,:));
    end
    Distortion_temp2(i)=sum(Distortion_temp1)/length(Distortion_temp1);
    Distortion_temp3(i)=max(Distortion_temp1);
    Distortion_temp4(i)=sum(Distortion_temp1);
end
Avg_Distortion=sum(Distortion_temp2)/length(Distortion_temp2);
Max_Distortion=max(Distortion_temp3);
Deviation_Distortion=Max_Distortion-min(Distortion_temp3);
sum_distances=sum(Distortion_temp4);
if length(Clusters)>1
    for i=1:length(Clusters)
        data=Clusters{i};

        index=[];
        for k=1:length(Clusters)
            if k~=i
                index=[index k];
            end
        end

        for j=1:length(data(:,1))
            for k=1:length(index)
                distance_temp(j,k)=distance(data(j,:),Centroids(index(k),:));
            end
        end
        Min_distance(i)=min(min(distance_temp));
    end
    Min_distance_cluster2OtherCentroid=min(Min_distance);
    Avg_distance_cluster2OtherCentroid=sum(Min_distance)/length(Min_distance);
else
	Min_distance_cluster2OtherCentroid=NaN;
    Avg_distance_cluster2OtherCentroid=NaN;
end

for i=1:length(Clusters)
	for j=1:length(Clusters)
        Centroids_distances(i,j)=distance(Centroids(i,:),Centroids(j,:));
    end    
end

sum_Centroids_distances=sum(sum(Centroids_distances))/2;

n_clusters=length(Centroids(:,1));

dataset=[];
for i=1:length(Clusters)
    dataset=[dataset; Clusters{i}];
end

[DB,out]=DBIndex(Centroids,dataset);

Output=[Avg_Distortion Avg_distance_cluster2OtherCentroid Max_Distortion Min_distance_cluster2OtherCentroid n_clusters Deviation_Distortion sum_distances sum_Centroids_distances DB];

end

