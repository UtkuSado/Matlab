function [h1 h2] = kokbul2(k1, k2, k3) % 1 5 6

w1 = [3 -4];
d1 = kokbul3(w1);

w2 = [1 5];
d2 = kokbul3(w2);

w3 = [2 2];
d3 = kokbul3(w3);

a = k1/d1;
b = k2/d2;
c = k3/d3;

x = -b/(2*a);
y = sqrt(b^2 - 4*a*c) / (2*a);

h1 = x + y;
h2 = x - y;

function u = kokbul3(n)

u = roots(n)

