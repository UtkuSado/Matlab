clear all
clc

%%%%%%% Bahar Dönemi Matlab Vize %%%%%%% 

%%% 3.1 Sayısal Türev %%% 

x = [-2,0,3,7,11,16];
y = [1 3 8 12 18 25];

dx = diff(x);
dy = diff(y);

df = dy ./ dx; % türev hesaplanıyor.

xgeri = x(2:end);
xileri = x(1: end-1);

% Örnek 1
t = 0:0.00001:3;
v = 3*t.^2 +4*t + 6;

dv = diff(v);
dt = diff(t);

ivme = dv./dt;

ivme_3_saniye = ivme(end);

% Örnek 2

x = 0:0.01:2*pi/3;
y = 2*exp(-4*x) - (1.2)*sin(4*x);
plot(x,y,'k-');
turev = diff(y) ./ diff(x);
hold on;
plot(x(2:end), turev, 'r:'); %geri-fark 
plot(x(1:end-1), turev, 'b--'); %ileri-fark

%%% Sayısal İntegrasyon %%%
 
% 3 2 1 Yamuklar Yöntemi ile İntegrasyon % 

y = [3 5 7]
s = trapz(y)
s

y = [3 6 4; 5 10 12];
s = trapz(y);

% Ornek 3

x = linspace(-pi/2, pi/2 ,10);
y = cos(x);

%plot(x,y, 'k-')

alan = trapz(x,y);

% Ornek 4 

t = [0:2:20];
V = [0 22 34 67 110 140 210 260 341 389 451];
%plot(t,V,'b:')
S = cumtrapz(t,V);

disp([t',V',S']);

% Parabolik (Simpson) Yöntemi ile İntegrasyon:

% Ornek 5

s = quad('1 ./ (x.^5 + x.^2 + 15*x - 6)',2,8);

quad('ornek5',2,8);

%%% İki boyutlu integrasyon %%% 

% Ornek 6

I = dblquad('y.^3 * cos(2*x) +1', 0,2,-pi/3,pi/3);
I = dblquad('ornek6',0,2,-pi/3,pi/3);

%%% Üç boyutlu integrasyon %%% 

% Ornek 7

I = triplequad('((x.^3 + 60*y)./3) - z',-1,2, 0,1, 2,6);
I = triplequad('ornek7',-1,2, 0,1, 2,6);

%%%%%%% Eski Matlab Konuları Çalışması %%%%%%% 

%%%% Grafik Çizimi %%%%














