%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  BBA source codes version 1.0                                     %
%                                                                   %
%  Developed in MATLAB R2011b(7.13)                                 %
%                                                                   %
%  Author and programmer: Seyedali Mirjalili                        %
%                                                                   %
%         e-Mail: ali.mirjalili@gmail.com                           %
%                 seyedali.mirjalili@griffithuni.edu.au             %
%                                                                   %
%       Homepage: http://www.alimirjalili.com                       %
%                                                                   %
%   Main paper: S. Mirjalili, S. M. Mirjalili, X. Yang              %
%               Binary Bat Algorithm, Neural Computing and          %
%               Application, in press,                              %
%               DOI: 10.1007/s00521-013-1525-5                      %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [o] = MyCost(x,data)

summ=0;
for i=1:length(x)
    
    summ=summ+i*x(i);
end
o=summ;


% o=sum(x); % Modify or replace here according to your cost funciton

end

