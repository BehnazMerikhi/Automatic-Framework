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
function Centroids=Centroids_finder(Clusters)

for i=1:length(Clusters)
    data=Clusters{1,i};
    if length(data(:,1))==1
        Centroids(i,:)=data;
    else
        Centroids_initial(i,:)=sum(data(:,:))./length(data(:,1));
        clear Distance_temp
        for j=1:length(data(:,1))
            Distance_temp(j)=distance(data(j,:),Centroids_initial(i,:));
        end
        [value,index]=min(Distance_temp);
        Centroids(i,:)=data(index,:); 
    end
end

end