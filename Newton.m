%% Newton Method Code:

clc
clear all
%% Initial Condition

x = zeros(size(30)); % assuming the max array size is 30
x(1) = pi/4; % % x_(n-1)
error = 10^(-3);

%% Root of f(x) = cosx - x

n = 2;
while (true)
    f = cos(x(n-1))-x(n-1); % f(x_(n-1))
    df = -sin(x(n-1)) - 1 ;% f'(x_(n-1))
    x(n) = x(n-1) - f / df; % the newton method
    err = abs(x(n)-x(n-1)); % calculating error
    if (err <= error) % check the erro
        x = x(n);
        break;
    end
    n = n + 1; % else
end 
%% Print the result

disp(x);