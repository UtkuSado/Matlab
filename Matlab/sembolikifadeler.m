clear all
clc

% Sembolik kayan noktali gösterim
a = 3.2;
sym(a, 'f');

% Sembolik kesirli gösterim
sym(a,'r');

% Sembolik kesirli eps gösterim
sym(a, 'e');

% Sembolik anlamlı sayı gösterim
sym(a,'d');

% -------------------------------------------------------------------------

syms a b
m = a^3 -2*b -4;
n = m+7;
u = n*exp(m+b);

% Yukarıda görüldüğü gibi a ve b değişkenleri en başta tanımlanmaktadir.
% Tanımlanan bu değişkenler kullanılarak m, n ve u gibi başka değişkenler
% tanımlanabilir. syms komutu kullanarak elemanları sembolik değişkenlerden
% oluşan vektör yada matrisler üretilebilir

% Örnek:

a = 2;
syms x 
c = x.^((1:a)'*(0:a));

% Sembolik ifadelerin çeşitli gösterim biçimleri:

% factor(y)
syms x
y = x^2 - 3*x +2;
z = factor(y);

% expand(y)
% 1-) Sembolik ifadelerin çarpımı
syms x 
y = x+3; z= x-1;
w = y*z;
v = expand(w);
% 2-) Trigonometrik ifadelerin açılımı
syms a b
x = cos(a+b);
y = expand(x);

% horner(y)
syms x 
y = (2*x^3 + 4*x^2 + 10*x + 20) / (x^2 + 5);
z = simplify(y);

% [a,b] = numden(A)
sym x
A = x - 1 + 3 /(x + 1) - 1 / (x + 3);
[pay,payda] = numden(A);

% subs(z, x, y)
syms x
y = (x+1)/(x^2-2*x+3);
z = subs(y,x,x-1);
m = subs(z,x,3);

% collect(a,b) --> A adındaki sembolik ifadeyi b ifadesinin çarpanı olacak
% şekilde parçalar.
syms x
A = -1/4*x*exp(-2*x)+3/16;
collect(A, exp(-2*x));

% collect(A) --> A sembolik polinomunun vektör şeklinde katsayıları
% bulunur.
syms x y
A = collect((x-y)*(x+y)*(x+1));

% pretty(A)
syms a b
A = (1-a)^3 / (b - b^2) + 4 /(8 + a^3);
pretty(A);

% Sembolik ifadelerin farklı ifadeler şeklinde yazılması 

syms x 
rewrite(sin(x),'tan');
rewrite(sin(x), 'exp');
rewrite(asinh(x), 'log');

% Sembolik ortamda verilen polinomların katsayı ve terim kısımları ayrı
% ayrı bulunmak istendiğinde coeffs komutu kullanılabilir.

syms a b c x
[coefficients, terms] = coeffs(a*x^2 + 2*b*x + 3*c, x);

% Sembolik ifadelerin sayısal karşılıklarını bulma 

% subs(A, x,a): A sembolik ifadesinin içinde yer alan x yerine a sayısını
% koyarak A nın sayısal karşılıgını hesaplar.
syms x 
A = 2*x^4 + 5*x^3 - 6*x -25;
B = subs(A, x, 28);


% double(A) : A adındaki sembolik sayıyı çift duyarlıklı sayıya dönüştürür.

% Sembolik Fonksiyonların Grafiklerinin Çizdirilmesi

% ezcounter('f') 

% ezcounter(f,[a b],[c d])

% ezplot(y, [a b])


% Sembolik denklem sistemlerinin çözümleri
% sembolik denklem sistemlerinin çözümleri için solve komutu kullanılır.

% A = solve(denklem1, denklem2, ... )

% Örnek:

syms x y 
A = solve(x^2 + 2*x*y + y == 3, 3*x^2 - 4*x + 1 == 0);
A.x;
A.y;
double(A.x);
double(A.y);

% solve komutu iki tırnak içinde verilen sembolik ifade içindeki sembolik
% değişkenlerin değerini sembolik değişkenler cinsinden bulunasını da
% sağlar.

% Örnek:

syms m n x
solve(m*cos(x) == n);

% Hemen yukarıdaki kod satırlarında aranan değişkenler m de olabilirdi,
% bunun için aranılan değişkenleri solve komutunun içinde yer alan ifadenin
% en sonuna koymak yeterlidir.

syms m n x
solve(m*cos(x) == n, m);

% Örnek:
syms x y alfa beta
A = solve(x^2 + x*y + y - alfa, x^2 - 4*x + beta);
A.x;
A.y;

% Hemen yukarıdaki ifadeden 4 adet değişken arasında hangilerinin arandığı,
% hangilerinin sabit kabul edildiği çok önemlidir.!!!!!!!!!!!!!!!!!!!!
% Herhangi bir şey belirtilmediğinden dolayı solve komutu default olarak x
% ve y ifadelerini değişken olarak kabul ederek bu ikisini alfa ve beta
% cinsinden bulur. Eğer alfa ve beta değişkenlerini x ve y cinsinden bulmak
% istiyorsak aşağıdaki komut satırları kullanılmalıdır.

syms x y alfa beta
A = solve(x^2 + x*y + y - alfa, x^2 - 4*x + beta, alfa, beta);
A.alfa;
A.beta;


% Sembolik ifadelerin Türevlerinin bulunması

