clc
clear
syms x
c=12.5;
m=68.1;
d=289.43515;
g=9.8;
% Lower Limit
a=0;
% Upper Limit
b=10;
% Number of segments
n=input("Enter number of segments: ");
% Declare the function
eq = (1-(exp(-(c/m)*x)));
f1=((g*m)/c)*eq;
%f1=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;
% inline creates a function of
% string containing in f1
f=inline(f1);
% h is the segment size or step size
h=(b - a)/n;
h
% X stores the summation of first
% and last segment
X=f(a)+f(b);
% variable R stores the summation of
% all the terms from 1 to n-1
R=0;
for i = 1:1:n-1
xi=a+(i*h);
R=R+f(xi);
end
% Formula to calculate numerical integration
% using Trapezoidal Rule
I=(h/2)*(X+(2*R));

Et = (abs(d-I)/d)*100;
% Display the output

fprintf('True area under the curve = ');
disp(d);
fprintf('Estimated area under the curve = ');
disp(I);
fprintf('True error Et in % = ');
disp(Et);