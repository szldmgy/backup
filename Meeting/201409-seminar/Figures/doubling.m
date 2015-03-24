function [ y ] = doubling( x,k )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if x<1/2 && x>=0
    y=2*x;
elseif x<=1 && x>=1/2
    y=2*x-1;
end
%y = round(y*10^k)/10^k;

return;

end

