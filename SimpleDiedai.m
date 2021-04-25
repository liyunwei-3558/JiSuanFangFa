function res = SimpleDiedai(f,eps,x0)
    res_last = x0;
    res = subs(f,res_last);
    fprintf("x_1 = %.8f\n",res);
    cnt=1;
    while(abs(res_last-res)>=eps)
        cnt = cnt+1;
        res_last  = res;
        res = subs(f,res_last);
        fprintf("x_%d = %.8f\n",cnt,res);
    end
end