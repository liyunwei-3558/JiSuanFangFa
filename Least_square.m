function a = Least_square(X,Y,n,m)
% - Description
%输入X Y n维 求m次多项式  输出a
% Syntax: syj = Least_square(X,Y,n,m)
%
% Long description
    for i = 0:m
        for j = 0:m
            A(i+1,j+1) = sum(X.^(i+j));
        end
        B(i+1,1) = sum(Y .* (X.^i));
    end
    A
    B
    a = inv(A)*B;
end