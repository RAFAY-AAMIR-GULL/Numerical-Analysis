function [v,ea,iter] = Problem4(val,es,maxit)
iter = 1;
sol = val;
ea = 100;
while(1)
    
    
    
solold = sol;
sol = sol + val ^ iter / factorial(iter);
iter = iter + 1;
if sol ~= 0
ea = abs((sol - solold)/sol)*100;
end
if ea <= es || iter >= maxit,break,end
end
v = sol;
end
