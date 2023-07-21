clear all
clc

% Polinom Oluşturma

x = [0 1 2]
B = 3*x.^4 - 7*x.^2 + 2*x -1

a = [3 0 -7 2 -1]
y = [0 1 2]
C = polyval(a,y)

% İki polinomun toplamı veya farkı 

a = [0 1 -4 0 -2 6]
b = [6 0 -2 -5 0 0]
c = a + b 

% Polinomun bir sayıyla çarpılması 

a = [2 3 -7 -2 1]
b = 2*a

% İki polinomun birbiri ile çarpımı 

% conv(x,y)

k = [4 -8 0 7 1]
m = [2 0 7 0 -2 6]
t = conv(k, m)


% Büyük Dereceli Polinomun Küçük Dereceli Polinoma Bölümü 

% [bolum, kalan] = deconv(pay, payda)

pay = [7 0 -2 8 0 0 2]
payda = [2 -4 0 2 8]
[bolum, kalan] = deconv(pay, payda)

% Polinom Türevinin alınması 

% polyder(a)

s = [2 0 0 7 0 -8 3]
a = polyder(s)

% polyder(x,y) --> x ve y vektörlerin çarpımının türevini hesaplar.
% [bolum, kalan] = polyder(x,y)

x = [1 0 0] % x^2
y = [0 1 0] % x 
polyder(x,y) % x^3 der--> 3*x^2  [3 0 0]

% x^4 / x^3 = x

x = [1 0 0 0]
y = [0 1 0 0]
[bolum, kalan] = polyder(x,y)

% Polinom integralinin alınması

% polyint(a)

a = [2 1 3] % 2*x^2 + x + 3 integral --> 2/3 * x^3 + 1/2 * x^2 + 3*x --> [2/3 1/2 3]
polyint(a)

% Polinom Köklerin Bulunması

% roots(a) 

d = [1 2 1]
c = roots(d)

f = [1 -4 6 -4 0]
k = roots(f)

% Kökleri bilinen bir polinomun elde edilmesi

f = [0 2 1-j 1+j]
k = poly(f)

% Pay ve paydasında polinom olan kesir ifadesinde köklerin bulunması

% Paydanın mertebesi paydan büyük ise;

pay = [1 0 -4]
payda = [2 -6 2 0 5]

[rez, kok] = residue(pay, payda) % (4) forma getirmek demek rez / t - kok 
 
% payın mertebesi paydadan büyük ise (????????????) (rezidü çalış!!!!)

pay = [1 -12 31 30 201 179]
payda = [0 -6 -3 52 -60]

[rez, kok, bolum] = residue(pay,payda)

%--------------------------------------------------------------------------

% Matlab Ortamında Alt Program Yapısı

R = [1 2 3 4 5];
S = alanbul(R)

a=5; b=7; h=12;
alan= hesapla(a,b,h)


x = 15
garip1 = gariphesap1(x) % tek giriş, tek çıkış

x = 5;
z = 10;
m = 15;
garip2 = gariphesap2(x,z,m) % çok giriş tek çıkış

x = 10;
[y,z,m] = gariphesap3(x) % tek giriş çok çıkış

x=1; y=2; z=3;
[k,l,m] = gariphesap4(x,y,z) % çok giriş çok çıkış

% -------------------------------------------------------------------------

a = 1; b = -1; c = -6;

[x1 x2] = kokbul(a,b,c) % x^2 -x - 6

% Matlab Ortamında Altprogram İçinde Altprogam Kullanılması 

a2= 1; b2= 5; c2= 6;

[x1 x2] = kokbul2(a2, b2, c2)

% Lineer Olmayan Denklem Sistemlerin Çözümü 

% fzero() --> tek değişkenli lineer olmayan bir denklemin kökünü bulmak
% için kullanılan matlab komutudur.

% optimset('...','...') (?????????????)

% Örnek1

x = fzero('ornek1', 1) % x0 = 1 başlangıç değeri 

x = fzero('x^3 - 3*x^2 + 5*x - exp(-x^2)', 1) % fonksiyonadi yerine direkt fonksiyon yazılabilir.

% Örnek2

x = linspace(-2,2);

f = -3*x.^3 - 3*x.^2 + 7*x + 6; % vektör gibi düşüncez

% plot(x,f); grid % başlangıç değeri seçmek için çizim yapıyorur.
% bu kökler için başlangıç değeri -1.5, -1, 1.5 alalım.

x1 = fzero('-3*x.^3 - 3*x.^2 + 7*x + 6', -1.5) % Burada noktalara gerek yok....!
x2 = fzero('-3*x.^3 - 3*x.^2 + 7*x + 6', -1)
x3 = fzero('-3*x.^3 - 3*x.^2 + 7*x + 6', 1.5)

% fsolve() --> çok değişkenli lineer olmayan denklem ve denklem
% sistemlerinin köklerini bulmak için kullanılan bir matlab komutudur.

% fsolve('x.^2 + exp(-3*x.^2) -5', [-10, 10]) % nokta yazılmaz ise hata verir.
% ans = -2.2361 2.2361
% fsolve('x.^2 + exp(-3*x.^2) -5', 10)
% ans = 2.2361

% Sembolik İşlemler 

% Bu bölümde sembolik çözümler üretilen matlab komutları kullanılacaktır. 
% Sembolik sayı değişken bir nesneler matlab ortamında aşağıda açıklanacak
% şartlar altında sym ve syms ifadeleri ile tanıtılır.











