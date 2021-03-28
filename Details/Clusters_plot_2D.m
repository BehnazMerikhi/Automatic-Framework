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
function Clusters_plot_2D(Clusters,Centroids)

MarkerSize_1=18;
MarkerSize_2=13;

properties=Clusters_evaluator(Clusters,Centroids);

figure;
ColorSet = varycolor(length(Centroids(:,1)));

for i=1:length(Clusters)
	plot(Centroids(i,1),Centroids(i,2),'Marker','+','Color',ColorSet(i,:),'MarkerSize',MarkerSize_1);
    hold on
    for j=1:length(Clusters{i}(:,1))
        plot(Clusters{i}(j,1),Clusters{i}(j,2),'Marker','.','Color',ColorSet(i,:),'MarkerSize',MarkerSize_2);
        hold on
    end
end

axis tight
axis equal
grid on
box on
hold on
title(['\fontsize{12}\bf Data set']);

end