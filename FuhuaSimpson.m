function Sn = FuhuaSimpson(n,a,b,Y)
%myFun - Description
%
% Syntax: Sn = FuhuaSimpson(h,a,b,Y)
%
% Long description
    m = n/2;
    h = (b-a)/n;
    for i=1:m;
        ou(i) = Y(2*i-1);
        ji(i) = Y(2*i);
    end
    ou(m+1) = Y(n+1);
    ou
    ji

    Sn = (2*sum(ou) + 4*sum(ji) - Y(1)-Y(n+1))*h/3;
end