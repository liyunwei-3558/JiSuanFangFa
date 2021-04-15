function Tn = T_zhucifenban(a,b,f,eps)
%梯形逐次分半算法 - Description
%
% Syntax: Tn = T_zhucifenban(a,b,Y,eps=1e-8)

    m = 0; h=(b-a);
    T_last = h/2*(double(subs(f,a))+double(subs(f,b)));
    T = inf;
    while abs(T-T_last) >= 3*eps
        F = 0;m=m+1;h = h/2;
        if m>1
        T_last = T;
        end
        m
        h
        for i = 1:pow2(m-1)
            %注意这里
            F = F + double(subs(f,(a + (2*i-1)*h)));
        end
        T = T_last/2 + F*h;
        fprintf('T(2^%d) = \n', m);
        T
        fprintf('R = %f\n', abs(T-T_last));
    end
    
    Tn = T;

end