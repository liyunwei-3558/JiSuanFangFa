%输入n阶 X Y 输出差商表 返回拟合函数
function N = NewtonSpline(n,X,Y)
    mat = zeros(n+1,n+1);
    mat(1,:) = Y;
    for i = 2:n+1
        for j = i:n+1
            mat(i,j) = mat(i-1,j)-mat(i-1,j-1);
            mat(i,j) = mat(i,j)/(X(j)-X(j-i+1));
        end
    end
    mat = mat'
    D = diag(mat);
    syms N suanzi x
    suanzi = 1;
    N = Y(1);
    for i = 2:n+1
        suanzi = suanzi*(x-X(i-1));
        N = N+suanzi*D(i);
    end
    fprintf("N%d(x) = \n",4)
    pretty(expand(vpa(N)))
end