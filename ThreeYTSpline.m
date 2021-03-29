%解决满足条件2的三转角方程
%输入n X Y a(0处二阶导数） b(n处二阶导数)
%输出各段拟合函数Si 以及各中间量
function ThreeYTSpline(n,X,Y,a,b)
    c = zeros(n-1,1);
    alpha = zeros(n-1,1);
    beta = zeros(n-1,1);
    for i = 1:n
        h(i) = X(i+1)-X(i);
    end
    h
    for i = 2:n
        c(i-1) = 6*((Y(i+1)-Y(i))/h(i) - (Y(i)-Y(i-1))/h(i-1) )/(h(i-1)+h(i)) ;
        alpha(i-1)=h(i-1)/ (h(i)+h(i-1));
        beta(i-1) = 1 - alpha(i-1);
    end
    c
    alpha
    beta
    c(1) = c(1)-alpha(1) * a;
    c(n-1) = c(n-1) - beta(n-1)*b;
    t1 = diag(beta(1:n-2),1)
    t2 = diag(alpha(2:n-1),-1)
    t3 = 2.* eye(n-1)
    A = t1+t2+t3
    M = inv(A) * c;
    M = [a M' b]
    for j = 1:n
      syms x
      s = M(j+1) * (x-X(j))^3/(6*h(j)) - M(j)*(x-X(j+1))^3/(6*h(j)) +(Y(j+1)-(M(j+1)*h(j)*h(j))/6) *(x-X(j))/h(j) - (Y(j)-(M(j)*h(j)*h(j))/6)*(x-X(j+1))/h(j);
      fprintf("S_%d = \n",j-1);
      pretty(expand(vpa(s)))
    end

end