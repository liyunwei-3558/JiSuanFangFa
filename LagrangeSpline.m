%����n�� X Y ���� ��Ϻ��� ��������������
function L = LagrangeSpline(n, X, Y)
    syms x lup L;
    format short
    lup = 1;
    ldown = 1;
    L = 0;
    for i = 1:n+1
        lup= lup * (x-X(i));
    end
    
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
        fprintf('L%d = \n',i);
        pretty(expand(vpa(l_i)))
        %expand(vpa(l_i))
        L = L+l_i*Y(i);
                
    end
    fprintf("�������պ���Ϊ:\n")
    L = expand(vpa(L))
end
