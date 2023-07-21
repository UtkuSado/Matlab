clear all
clc

% x = [-2,0,3,7,11,16];
% y = [1 3 8 12 18 25];
% dx = diff(x)
% dy = diff(y)
% df = dy./dx  %türev hesaplanıyor
% xgeri = x(2:end) %geri fark yaklaşımı
% xileri = x(1:end-1)  %ileri fark yaklaşımı

% t = 0:0.001:3;
% v = 3*t.^2+4*t+6;
% a = diff(v)./diff(t) % tüm zaman aralığı boyuncz ivme değeri bulunuyor
% ivme_3_saniye = a(end)

% x = 0:0.01:2*pi/3;
% y = 2*exp(-4*x)-(1.2)*sin(4*x);
% turev = diff(y)./diff(x);
% plot(x,y,'k-')
% hold on
% plot(x(2:end),turev,'.r:')   % geri fark
% plot(x(1:end-1),turev,'b--')  % ileri fark

% y = [3 5 7];
% S = trapz(y)
% y2 = [3 6 4;5 10 12];
% S2 = trapz(y2)

% x = linspace(-pi/2,pi/2,1000000);
% y = cos(x);
% alan = trapz(x,y)
% kontrol = 2-alan

% t = [0:2:20];
% V = [0 22 34 67 110 140 210 260 341 389 451];
% S = cumtrapz(t,V);
% disp([t',V',S'])

% quad('cos(x)',-pi/2,pi/2)
% quadl('cos(x)',-pi/2,pi/2)

% %%% direkt %%%
% I = quad('1./(x.^5+x.^2+15*x-6)',2,8)
% %%% alt program ile %%%
% I = quad('ornek',2,8)

% S = dblquad('y.^3*cos(2*x)+1',0,2,-pi/3,pi/3)
% S = dblquad('ornek2',0,2,-pi/3,pi/3)

V = triplequad('(x.^3+60*y)/3 - z',-1,2,0,1,2,6)
V = triplequad('ornek3',-1,2,0,1,2,6)