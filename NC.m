function ans = NC(n,a,b,Y)
%myFun - Description
% 输入n, a,b,Y
% Syntax: ans = liangdian()
%
% Long description
    
    h = (b-a)/n;
    if n==2:
        C = [1/6 4/6 1/6];
    elseif n==3:
        C = [1 3 3 1]./8;
    end
    
    ans = (b-a) * (C*Y);
    
end