function y = jacobdiedai(A,b,n,x0,eps,N)
    cnt = 1;
    x_last = x0;
    x = zeros(n,1);
    while (cnt <= N)
        for i = 1:n
            sum = 0;
            for j = 1:n
                if (j==i) 
                    continue;
                end
                sum = sum + A(i,j)*x_last(j);
            end
            x(i) = (b(i)-sum) / A(i,i)
        end
        cnt
        x
        cnt = cnt+1;
        if(abs(norm(x)-norm(x_last)) <= eps) 
            break
        end
        x_last = x;
    end
    y = x;
end