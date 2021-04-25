function res = Xuanjiefa(f,x0,x1,eps)
    res_last = x1;
    res_pre = x0;
    dis = res_last-res_pre;
    res = res_last - (subs(f,res_last) * (dis) )/(subs(f,res_last)-subs(f,res_pre));
    index = 2;
    fprintf("x%d = %f\n",index,res);
    while(abs(res-res_last)>=eps)
        index = index+1;
        res_pre = res_last;
        res_last = res;
        dis = res_last-res_pre;
        res = res_last - (subs(f,res_last)*(dis))/(subs(f,res_last)-subs(f,res_pre));
        fprintf("x%d = %f\n",index,res);
    end
end