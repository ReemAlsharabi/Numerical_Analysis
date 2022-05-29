%% Secant Method Code:

clc
clear all
%% Initial Values

x = zeros(size(30)); % assuming the max array size is 30
x(1) = pi/4; % x_(n-2)
x(2) = 1; % x_(n-1)
error = 10^(-3);
%% Root of f(x) = cosx - x

n = 3;
while (true)
    f1 = cos(x(n-1))-x(n-1); % f(x_(n-1))
    f2 = cos (x(n-2))-x(n-2); % f(x_(n-2))
    x(n) = x(n-1) - (f1 * (x(n-1)-x(n-2))) / (f1-f2); % Secant method
    if (abs(x(n)-x(n-1)) <= error) % check the erro
        x = x(n); % set the result to x_n
        break;
    end
    n = n+1; % continue if we didn't reach the error
end
%% Print the result

disp(x);