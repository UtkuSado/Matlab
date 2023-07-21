clear all
clc

% Polinom oluşturma

x = [0 1 2]
B = 3*x.^4 - 7*x.^2 + 2*x + 1 % x önceden tanımlanmış bir bir vektör ise üstel kısımların soluna
                              % nokta konulmalıdır.


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
% x ve y adlı iki vektörün çarpımı hesaplar ve elde edilen polinom
% katsayılarını verir. Burada kullanılan x ve y vektörleri iki ayrı
% polinomun katsayılarıdır ve ÇARPILABİLMESİ İÇİN BOYUTLARI AYNI OLMAK
% ZORUNDA DEĞİLDİR.
k = [4 -8 0 7 1]
m = [2 0 7 0 -2 6]
t = conv(k, m)

% Büyük Dereceli Polinomun Küçük Dereceli Polinoma Bölümü 

% [bolum, kalan] = deconv(pay, payda)
% pay ve payda adlı iki vektörün bölümünü hesaplar. bolum ve kalan sırayla
% Bölüm ve Kalan polinomlarının katsayılarını içeren vektörlerdir. İki
% vektörün pay ve payda boyutları aynı olmak zorunda değildir.
pay = [7 0 -2 8 0 0 2]
payda = [2 -4 0 2 8]
[bolum, kalan] = deconv(pay, payda)

% Polinom Türevinin alınması 
% polyder(a)
s = [2 0 0 7 0 -8 3]
a = polyder(s)
% polyder(x,y) --> x ve y vektörlerin çarpımının türevini hesaplar.
% [bolum, kalan] = polyder(x,y) --> x ve y vektörlerinin bölümünün türevini

x = [1 0 0] % x^2
y = [0 1 0] % x 
polyder(x,y) % x^3 der--> 3*x^2  [3 0 0]

x = [1 0 0] % x^2
y = [0 1 0] % x 
[bolum, kalan] = polyder(x,y) % x der--> 1  [0 0 1]

% Polinom integralinin alınması
% polyint(a)
a = [2 1 3] % 2*x^2 + x + 3 integral --> 2/3 * x^3 + 1/2 * x^2 + 3*x --> [2/3 1/2 3]
polyint(a)

% Polinom Köklerin Bulunması
% roots(a) 
d = [1 2 1] % x^2 + 2*x + 1 = (x+1)^2 => x1= -1, x2= -1
roots(d)

f = [1 -4 6 -4 0]
k = roots(f)
% Bu köklerin, k polinomunu sağlayıp sağlamadığını kontrol etmek istersek.
polyval(f,k)

% Kökleri bilinen bir polinomun elde edilmesi
f = [0 2 1-j 1+j]
k = poly(f)

f = [-1 -1]
k= poly(f)

% Pay ve paydasında polinom olan kesir ifadesinde köklerin bulunması

% Paydanın mertebesi paydan büyük ise;
pay = [1 0 -4]
payda = [2 -6 2 0 5]
[rez, kok] = residue(pay, payda) % (4) forma getirmek demek rez / t - kok 

% payın mertebesi paydadan büyük ise (????????????) (rezidü çalış!!!!)
pay = [1 -12 31 30 201 179]
payda = [0 -6 -3 52 -60]
[rez, kok, bolum] = residue(pay,payda)

clear all
clc
%--------------------------------------------------------------------------
% Matlab Ortamında Alt Program Yapısı
R = [1 2 3 4 5]
S = alanbul(R)

% Yukarıdaki ve alanbul.m bölümündeki iki ayrı bölüm olarak verilen program
% satırlarının çalışması şu şekilde olmaktadır. Matlab, R vektörünün ilk
% değeri 1'i almakta ve bunu alanbul satırına taşımaktadır. alanbul(R),
% matlab içinde yabancı bir komut olduğunda önce matlab dosyaları içinde bu
% ad verilmiş dosya aranır. Eğer dosya bulunur ise (ve tanımlama doğru yapılmış ise)
% 1, alanbul içinde yer alan y = pi*z.^2 ifadesinde kullanılır ve elde
% edilen sonuç ana programa geri götürülerek ana program içerisindeki
% alanbul(R) ifadesinde R yerine konularak 1 yarıçaplı dairenin alanı
% hesaplanır. Bu işlem sonunda bulunan değer ana programda S vektörünün ilk
% elemanı olarak atanır. Benzer işlemler R nin diğer değerleri için ayrı
% ayrı yapılır.

a=5; b=7; h=12;
alan= hesapla(a,b,h)

% tek giriş, tek çıkış
x = 15
garip1 = gariphesap1(x)

% çok giriş tek çıkış
x = 5;
z = 10;
m = 15;
garip2 = gariphesap2(x,z,m)

% tek giriş çok çıkış
x = 10;
[y,z,m] = gariphesap3(x)

% çok giriş çok çıkış
x=1; y=2; z=3;
[k,l,m] = gariphesap4(x,y,z) 

a = 1; b = -1; c = -6;
[x1 x2] = kokbul(a,b,c) % x^2 - x - 6

% Matlab Ortamında Altprogram İçinde Altprogam Kullanılması 
a2= 1; b2= 5; c2= 6;
[x1 x2] = kokbul2(a2, b2, c2)












