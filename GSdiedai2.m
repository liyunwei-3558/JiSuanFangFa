function y = GSdiedai2(A,b,n,x0,eps,N)
cnt=1;
x=x0;
    D=diag(diag(A))
    L=-tril(A,-1)
    U=-triu(A,1)

while(cnt<=N)

    x0=inv(D-L)*U*x0+inv(D-L)*b;

if(abs(norm(x)-norm(x0)) <= eps) 
break
end
cnt=cnt+1;
x=x0;
cnt
x
end
y = x
end