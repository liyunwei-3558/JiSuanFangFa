function yn = RK_4(f, h, a, b, y0)
    %RK_4 - Description
    %
    % Syntax: res = RK_4(f,h,a,b,y0)
    yn = y0;
    cnt = 0;

    for x = a:h:b - h
        K1 = subs(subs(f, x), yn);
        K2 = subs(subs(f, x + h / 2), yn + h / 2 * K1);
        K3 = subs(subs(f, x + h / 2), yn + h / 2 * K2);
        K4 = subs(subs(f, x + h), yn + h * K3);
        cnt = cnt + 1;
        w = [1 2 2 1];
        K = [K1, K2, K3, K4]';
        yn = yn + h / 6 * (w * K);
        fprintf("x=%.4f,y_%d=%.4f\n", x, cnt, yn);
        vpa(K)
    end

end
