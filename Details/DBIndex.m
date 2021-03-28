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
function [DB, out] = DBIndex(m, X)

    k = size(m,1);

    % Calculate Distance Matrix
    d = pdist2(X, m);
    
    % Assign Clusters and Find Closest Distances
    [dmin, ind] = min(d, [], 2);
   
    q=2;
    S=zeros(k,1);                     
    
    for i=1:k   
        if sum(ind==i)>0
            S(i) = (mean(dmin(ind==i).^q))^(1/q);       
        else
            S(i) = 10*norm(max(X)-min(X));
        end
        
    end
   
    t=2;
    D=pdist2(m,m,'minkowski',t);           %D is Inter-cluster distances [d i,j,t in formula]
    
    r = zeros(k);
    for i=1:k
        for j=i+1:k
            r(i,j) = (S(i)+S(j))/D(i,j);
            r(j,i) = r(i,j);
        end
    end
    
    R=max(r);
    DB = mean(R);
 
    out.d=d;
    out.dmin=dmin;
    out.ind=ind;
    out.DB=DB;
    out.S=S;                
    out.D=D;
    out.r=r;
    out.R=R;  
  
end