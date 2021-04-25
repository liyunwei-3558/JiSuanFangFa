function  yn = ModifiedEular(f, h, a, b, y0)
    %ModifiedEular method - Description
    %
    % Syntax: res = ModifiedEular(f,h,a,b,y0)
    yn = y0;
cnt = 0;
    for x = a:h:b-h
        yp = yn + h * subs(subs(f, x), yn);
        yq = yn + h * subs(subs(f, x + h), yp);
        cnt = cnt+1;
        yn = 0.5 * (yp + yq);
        fprintf("x=%.4f,y_%d=%.4f,yp=%.4f,yq=%.4f \n", x,cnt,yn, yp, yq);
    end


end
