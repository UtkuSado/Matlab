clear all
clc

% Sembolik ifadelerin türevlerinin bulunması 

syms x 
A = 2*x^3 - 2*x^2 + 5*x +8;
turev_A = diff(A,x,2);
turev_A;

% Sembolik olarak jacobian matrisin elde edilmesi
syms x y z
f = x*cos(y)*sin(2*z)+x^2;
g = x^3*sin(2*y)+z^3;
h = x^3-y^4+x*z;
J = jacobian([f;g;h],[x,y,z]);
det(J);
simplify(det(J));

% Diferansiyel Denklem Sistemlerinin Matlab Komutu ile Sembolik Çözümü

syms x 
A1 = dsolve('Dx + x = cos(t) + t');
A2 = dsolve('Dx + x = cos(t) + t',  'x(0)=1');
A1
A2

% Sembolik ifadelerin integrali

% int(A, T, a,b)

% Sembolik Ortamlarda Laplace ve Ters Laplace dönüşümleri

% laplace(f), ilaplace(f)















