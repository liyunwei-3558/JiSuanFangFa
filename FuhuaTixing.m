function Tn = FuhuaTixing(n,a,b,Y)
%myFun - Description
%
% Syntax: Tn = FuhuaTixing(n,a,b,Y)
    h = (b-a)/n;
    Tn = h/2 * (sum(Y)*2 - Y(1)-Y(n+1));
end