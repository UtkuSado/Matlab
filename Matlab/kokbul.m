function [h1 h2] = kokbul(k1, k2, k3)

x = -k2 / (2 * k1)

y = sqrt(k2 ^ 2 - 4*k1*k3) / (2 * k1)

h1 = x + y 

h2 = x - y