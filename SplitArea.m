%就是二分法 输入f（syms） 区间a b 迭代次数N 单调性(1+ 0-)
%返回结果 并输出每一次的求解
function res = SplitArea(f,a,b,N,grad_direction)
l = a;
r = b;
for step = 1:N+1
    mid = (l+r)/2;
    now_res = subs(f,mid);
    fprintf("第%d次：mid = %f,l=%f,r=%f,f(mid)=%f\n",step-1,mid,l,r,now_res)
    if(grad_direction == 1)
        if now_res>=0
            r = mid;
        else
            l = mid;
        end
    end
    if(grad_direction == 0)
        if now_res>=0
            l = mid;
        else
            r = mid;
        end
    end
    
    res = mid;
end
end