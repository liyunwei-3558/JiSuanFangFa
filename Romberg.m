function Rom = Romberg(a,b,f,eps)
%myFun - Description
%
% Syntax: Rom = Romberg(a,b,f,eps)

m = 0; 
h=(b-a);

T(0+1,0+1) = h/2*(double(subs(f,a))+double(subs(f,b)));
    while m==0 |abs(  (T(m+1,m+1)-T(m,m))  )>= eps
        F = 0;m=m+1;h = h/2;
        for i = 1:pow2(m-1)
            %注意这里
            F = F + double(subs(f,(a + (2*i-1)*h)));
        end
        T(m+1,0+1) = T(m,0+1)/2 + F*h;
        %F的计算和梯形对半一模一样
        for j = 1:m
            T(m+1,j+1) = (4^j * T(m+1,j) - T(m,j))/(4^j-1);
            %注意这里是4的j次方
        end
        fprintf('R = %f\n', abs(T(m+1,m+1)-T(m,m))  );
    end
 T
 Rom = T(m+1,m+1);
 fprintf('R = %f\n', abs(T(m+1,m+1)-T(m,m))  );
end