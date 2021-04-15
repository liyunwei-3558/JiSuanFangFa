function [ans1,ans2] = Three_point_diff(h,X,Y)
%myFun - Description
%
% Syntax: ans1,ans2 = Three_point_diff(h,X,Y)
%
% Long description
    A = [-3 4 -1;
         -1 0 1;
         1 -4 3];
    ans1 = (A*Y)./(2*h);

    B = [1 -2 1];
    ans2 = (B*Y) ./ (h^2);
   
end