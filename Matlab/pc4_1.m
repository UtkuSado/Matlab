clear all
clc
% s=2;
% A=s^3-2*s^2+1;
% B=s^2+s-5;
% C=A/B

% M = [1 2 5;3 4 6;7,8,9] % M matrisi oluşturuldu!
% format short
% A = 500/6
% format long
% A = 500/6
% format shorte
% A = 500/6
% format longe       % çeşitli format türleri!
% A = 500/6
% format bank
% A = 500/6
% format +
% A = 500/6
% format rational
% A = 500/6

% x = sin(pi/2) % radyan cinsinden
% y = sind(90) % derece cinsinden
% z = asin(1)   % arcsin(1) değerinin yazılışı, sonuç:pi/2
% sinh(0)   % hiperbolik sin(0) değerinin yazılışı, sonuç:0

% Z = 3+4i;
% Z_reel = real(Z)
% Z_imajiner = imag(Z)
% Z_eslenik = conj(Z)
% Z_aci = angle(Z)

x = -pi:0.3:pi; %-pi den pi ye 0.3 artışla hesaplanır.
y = sin(x);
plot(x,y,'*k:')
hold on
z = sin(x+1);
plot(x,z,'om--','LineWidth',2) % sırasıyla; marker,renk,çizgi şekli ve kalınlık uygulanmıştır
w = sin(x+2);
plot(x,w,'<g-.','LineWidth',3)
title('sinüs fonksiyonları')
xlabel('x ekseni')
ylabel('y ekseni')
% grid   % ızgara deseni ekler
axis([-4 3.5 -1.5 1.7]) % eksenleri istediğimiz formatta ayarlar
legend('sin(x)','sin(x+1)','sin(x+2)') %ekrana grafikler ile ilgili bilgi yazar.

% x = 0:.2:12;
% Y = [besselj(1,x); besselj(2,x); besselj(3,x)];
% plot(x,Y);
% legend('J_1','J_2','J_3','Location','best')