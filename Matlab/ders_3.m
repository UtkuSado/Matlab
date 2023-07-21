clear all
clc

sin(90)    % 90 radyan cinsinden
% sind(90)    % 90 derece cinsinden
% cos(90)    % 90 radyan cinsinden
% cosd(90)    % 90 derece cinsinden
sind(90)
% sinh(0)
% cosh(0)
log(2.7)
log10(10)

%      %%% Verilen problemi çözelim %%%
%      format bank
%      A = log(5)*log10(8)
%      B = 0.5*atan(0.5)*(5^(1/3))*abs(cos(2*pi/3))*exp(cos(2*pi/3))
%      x = asinh(B/A)
     
z = 6+8i    % notasyon olarak i veya j kullanılabilir.
abs(z)  % z nin mutlak değeri hesaplanıyor
real(z)   % z nin reel kısmı hesaplanıyor
imag(z)    % z nin sanal kısmı hesaplanıyor
conj(z)    % z nin eşleniği hesaplanıyor
%      
%      z1 = 3-5i; z2 = 5+8i; z3 = z1*z2     % karmaşık sayılarda 4 işlem
x = -pi:0.1:pi   % x i -pi den pi ye 0.1 artırarak elde ediyor
y = sin(x);     % x değerleri için y = sinx hesaplanıyor
z = 2*sin(x);    % x değerleri için z = 2sinx hesaplanıyor
% plot(x,y,'-kd')   %  y ifadesi x e göre çizdiriliyor (siyah renk,elmas desen)
plot(x,y,'-g+')   %  yeşil renk, + desen
hold on      % ilk grafiği tutuyor
plot(x,z,'-r.')    %  kırmızı renk, . desen
title('sinx ve 2sinx çizimi')   % grafiğe başlık eklendi
xlabel('x ekseni')      % grafikte x eksenine açıklama eklendi
ylabel('y ekseni')    % grafikte Y eksenine açıklama eklendi
grid    % grafiğe ızgara deseni eklendi
axis([-pi pi -4 4])   % bu komut ile eksenler seçilebilir.