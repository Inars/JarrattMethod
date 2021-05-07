function [p,mdp] = chebyshev(c,x)
    n = length(c);
    t = [];
    dt = [];
    mdt = [];
    t(1) = 1;
    dt(1) = 0;
    mdt(1) = 0;
    for i = 2:n
        t(i) = cos((i-1)*acos(x));
        dt(i) = ((i-1)*sin((i-1)*acos(x)))/(1 - x^2)^(1/2);
        mdt(i) = ((i-1)*sin((i-1)*acos(x - (cos((i-1)*acos(x))*(1 - x^2)^(1/2))/(2*(i-1)*sin((i-1)*acos(x)))))*((x*cos((i-1)*acos(x)))/(2*(i-1)*sin((i-1)*acos(x))*(1 - x^2)^(1/2)) - cos((i-1)*acos(x))^2/(2*sin((i-1)*acos(x))^2) + 1/2))/(1 - (x - (cos((i-1)*acos(x))*(1 - x^2)^(1/2))/(2*(i-1)*sin((i-1)*acos(x))))^2)^(1/2);
    end
    p = c*t';
    mdp = c*mdt';
end

