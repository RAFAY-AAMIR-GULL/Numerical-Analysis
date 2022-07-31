clc
% Setting x as symbolic variable
syms x;
%initializing value
m=9.5;
v=44;
g=9.81;
t=12;
 
%implementing equation
eq = 1-(exp(-(x/m)*t));
y = (((g*m)/x)*eq)-v;
% Input Section
a = input('Enter the initial guess: ');
e = 1e-4;
N = input('Enter the maximum number of Iterations: ');
X_new(1)=a;
% Initializing Iteration counteu
Iteration = 1;
% Finding derivate of given function
g = diff(y,x);
% Finding Functional Value
fa = eval(subs(y,x,a));
fprintf('\n')
while abs(fa)> e
fa = eval(subs(y,x,a));
ga = eval(subs(g,x,a));
if ga == 0
disp('Division by zero, not approriate.');
break; 
 
end

x_new = a - fa/ga;
Et=x_new-a;
fprintf('Iteration=%d\t\tx_new=%f\t\tEt=%f\n',Iteration,x_new,Et); 
a = x_new;
X_new(Iteration+1)=a;
iterations(Iteration)=Iteration;

i=i+1;
if Iteration>N
disp('Not convergent');
break;
end
Iteration = Iteration + 1;
end
 
 
fprintf('\nThe root is %f\n', a);


val=eval(subs(y,x,x_new));