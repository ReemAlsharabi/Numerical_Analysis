%% *BISECTION METHOD*
%% Entering the values

clc
clear all

functionIN = input('Enter the function: ', 's' ); % entering the function 
thefunction = inline(functionIN);

firstValue = input('Enter the value of a: ') ; % entering the value of a 
endValue = input('Enter the value of b: '); % entering the value of b
error = input('Enter the error: ');% entering the error
%% Making sure it's continuous

if thefunction(endValue)*thefunction(firstValue)<0

% retaking the values 
else
    fprintf('The values are incorrect! Enter new valeus\n'); % error message 
    firstValue = input('Enter the value of a: \n'); % re-entering the value of a
    endValue = input('Enter the value of b: \n'); % re-entering the value of b
end

%% Calculations

for i = 2:1000
    mid = (endValue + firstValue) / 2; % calculating the mid point 

% the product of f(b) and f(c) is positive
    if thefunction(endValue) * thefunction(mid)<0
        firstValue = mid;
    else
        endValue = mid;
    end
    
% the product of f(b) and f(c) is negative
    if thefunction(firstValue) * thefunction(mid) < 0
        endValue = mid;
    else
        firstValue = mid;
    end
% checking the error
    xnew(1) = 0;
    xnew(i) = mid;
    if abs((xnew(i)-xnew(i-1))/xnew(i))<error,break,end
end

%% Display the answer

fprintf('\n The root is %4.4f ', mid);