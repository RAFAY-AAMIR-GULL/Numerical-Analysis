

TR=0.006737947;
s=1


N=20;

%approach1
for i=1:N
    if mod(i,2)==0
        s=s+((5^i)/factorial(i));
    else
        s=s-((5^i)/factorial(i));
    end
end
fprintf("Approach 1 %.20f",s);
fprintf("\n")


%approach2
for i=1:N
    s=s+((5^i)/factorial(i));
end
sum=1/s;
fprintf("Approach 2 %.20f",s);
