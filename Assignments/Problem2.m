
A=0;
for i=1:10000
   A=A+(1/i^4);
end
converge1=(((pi^4)/90-A)/((pi^4)/90));
disp("PR Error for approach 1");
disp(converge1);

B=0;
for i=10000:-1:1
   B=B+(1/i^4); 
end
converge2=(((pi^4)/90-B)/((pi^4)/90));
disp("PR Error for approach 2");
disp(converge2);
