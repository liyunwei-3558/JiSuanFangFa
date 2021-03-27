%输入n (从x0开始有n+1个点) X Y qx（要求的x） 输出该段拟合函数 返回结果
%X 要从小到大排列
function anss = SplitLinearSpline(n, X, Y, qx)  
    format short
    index = 0;
    for i = 1:n+1
        if qx<X(i)
            index = i-1;
            break;
        end
    end
    syms x phi
    
    phi = (x-X(index+1))/(X(index)-X(index+1)) * Y(index) + (x-X(index))/(X(index+1)-X(index)) * Y(index+1);
    fprintf("phi(x) = \n")
    pretty(vpa(expand(phi)))
    anss = subs(phi, qx);
    anss = vpa(anss);
    
end