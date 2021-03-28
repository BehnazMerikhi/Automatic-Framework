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
function [gBest]=clustering_SO_optimization_InternalFunction(data,k_max)

Max_iteration=100
noP=100

A=.25;      % Loudness  (constant or decreasing)
r=.1;      % Pulse rate (constant or decreasing)

CostFunction=@Objective_function_Typical_1;

%%
n_bit=length(de2bi(k_max-1)-1);
noV=n_bit*length(data(:,1));
%%
% % % Single-objective
	[gBest,gBestScore,ConvergenceCurve]=BBA(noP,A,r,noV,Max_iteration,CostFunction,data);
    
    figure;
    plot(ConvergenceCurve,'DisplayName','BBA','Color', 'r');
    hold on
    title(['\fontsize{12}\bf Convergence curve BBA']);
    xlabel('\fontsize{12}\bf Iteration');ylabel('\fontsize{12}\bf Best obtained so far');
    grid on
    axis tight
%%
    Objective_function_Typical_plot(gBest,data);
%     Path_folder=pwd;
%     save_path=[Path_folder,'/#Results_generated/Final_Results/'];
%     save([save_path,'gBest'],'gBest');  

%     save([save_path,'ConvergenceCurve'],'ConvergenceCurve');
    
%%    
    out_temp=Objective_function_Typical_2(gBest,data);
    n_clusters=out_temp(5)
    Max_distance_cluster2centroid=out_temp(3)
    Min_distance_cluster2OtherCentroid=out_temp(4)
    Deviation_Distortion=out_temp(6)

end