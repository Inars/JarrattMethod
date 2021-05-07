format shortg;
m = 5000;
time = [];
c = [];
x0 = 0.2;
tol = 0.0001;
maxi = 50;
for j = 1:m
    c(j) = 1;
    start = clock; 
    [xn,i] = jarratt(x0,c,tol,maxi);
    finish = clock;
    time(j) = finish(6) - start(6);
end
x = zeros(length(time),1);
for j = 2:length(time)
    x(j)= x(j-1)+1;
end
plot(x,time)