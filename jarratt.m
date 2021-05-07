function [x,i] = jarratt(x0,c,tol,maxi)
    if x0 == 0
        x0 = tol;
    end
    x = x0;
    i = 0;
    flag = false;
    while flag == false
        [p,mdp] = chebyshev(c,x);
        x = x-(p/mdp);
        corr = p/mdp;
        if abs(corr) <= tol 
            flag = true;
        end
        if i > maxi
            flag = true;
        end
        i = i + 1;
    end
end

