function y = Jacobdiedai2(A,b,n,x0,eps,N)
    cnt = 1;
    x_last = x0;
    x = zeros(n,1);
    D = diag(diag(A));
    B = eye(n) - inv(D)*A
    
    g = inv(D)*b
    
    while (cnt <= N)
        x = B*x_last + g;
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