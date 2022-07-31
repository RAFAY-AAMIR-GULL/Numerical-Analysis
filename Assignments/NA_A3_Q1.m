% Clearing Screen

%RAFAY AAMIR GULL (BSEE19047)
clc

% Setting x as symbolic variable
syms x;

%Input Section
c=12.5;
m=68.1;
d=289.43515;
g=9.8;
eq = int((1-(exp(-(c/m)*x))), 0, x);
y = eq-((d*c)/(g*m));

%y = input('Enter non-linear equations: ');
a = input('Enter initial guess: ');
e = input('Tolerable error: ');
N = input('Enter maximum number of steps: ');
% Initializing step counter
step = 1;
disp(y)

% Finding derivate of given function
g = diff(y,x);

% Finding Functional Value
fa = eval(subs(y,x,a));
while abs(fa)> e
fa = eval(subs(y,x,a));
ga = eval(subs(g,x,a));
if ga == 0
disp('Division by zero.');
break;
end
b = a - fa/ga;
fprintf('step=%d\ta=%f\tf(a)=%f\n',step,a,fa);
a = b;
if step>N
disp('Not convergent');
break;
end
step = step + 1;
end
fprintf('Root is %f\n', a);