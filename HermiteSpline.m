%输入n X Y dY 输出各个hi Hi 返回拟合函数
%不适用于一般形式 只能是每个点都知道导数时才可以

function H_x = HermiteSpline(n, X, Y, dY)
    syms x lup H_x;
    format short
    lup = 1;
    for i = 1:n+1
        lup= lup * (x-X(i));
    end
    H_x  = 0;
    for i = 1:n+1
        ldown = 1;
        nowlup = lup / (x-X(i));
        for j = 1:n+1
            if j==i
                continue
            end
            ldown = ldown * (X(i)-X(j));
        end
        l_i = nowlup/ldown;
        fprintf('L%d = \n',i-1);
        pretty(expand(vpa(l_i)))
        %expand(vpa(l_i))
        fprintf("h_%d(x) = \n ",i-1);
        h_i = (1-2 *( (x-X(i)) * subs(diff(l_i),X(i)) ) ) * l_i * l_i;
        pretty(expand(vpa(h_i)))
        fprintf("H_%d(x) = \n ",i-1);
        H_i = (x-X(i)) * l_i * l_i;
        pretty(expand(vpa(H_i)))
        
        H_x = H_x +Y(i)*h_i + dY(i) * H_i;
    end
    H_x = expand(vpa(H_x));
end