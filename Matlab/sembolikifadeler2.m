clear all
clc

%%% Sembolik ifadelerin Türevlerinin bulunması

% diff(A) : A sembolik ifadesinin sembolik değişkene göre türevi alır dA/dx

% Örnek:
%syms x
%A = 2*x^3 - 2*x^2 + 5*x +8;
%turev_A = diff(A);

% Örnek:
%syms x
%A = log(x^2);
%turev_A = diff(A);

% diff(A,y) : A sembolik ifadesinin y sembolik değişkenine göre türevini
% alır. dA/dy

% Örnek:
syms x y
A = 2*y^3 + 4*x^2 - 2*y - 10;
diff(A,y);
diff(A,x);

% diff(A,n) : A sembolik ifadesinin n. dereceden türevi hesaplar.

% Örnek:
syms y x
A = x^2 + 4*y^3 - 7*x - 10*y; % otomatik olarak x aldı.
turev = diff(A,2);

% diff(A,x,n) : A sembolik ifadesinin x e göre n. dereceden türevini
% hesaplar.

% Örnek:
syms x y 
A = 2*x^3 - 2*y^2 + 5*y - 8*x;
B = diff(A,x,3);


%%% Sembolik Olarak Jacobian Matrisinin elde edilmesi:

% f,g,h olarak verilen 3 adet lineer olmayan denklem sistemine ilişkin
% Jacobian matrisi sembolik araç kutusu yardımıyl hesaplanarak
% istenirse, Aşağıdaki komut satırları kullanılabilir.

syms x y z 
f = x*cos(y)*sin(2*z)+ x^2;
g = x^3 + sin(2*y) + z^3;
h = x^3 - y^4 + x*z;
J = jacobian([f;g;h],[x;y;z]);

% Yukarıdaki matrisin determinantını hesaplamak istenirse

det(J);

%%% Sembolik ortamlarda Limit işlemleri 

syms n x
limit((1+x/n)^n,n,inf);

syms x 
limit(x/abs(x), x, 0, 'left'); % 'right' olsa cevap 1 olurdu.

%%% Diferansiyel denklem sistemlerinin matlab komutu ile sembolik çözümü

% A = dsolve('diff1, diff2, ..., ilkkosul1, ilkkosul2, ...')
% diff1, diff2, ... diferansiyel denklemlerine ilişkin ilk koşull değerleri
% ilkkosul1, ilkkosul2, ... ise dsolve komutu kullanılarak diferansiyel
% denklem sistemi çözülebilir. Burada birinci türev D, ikinci türev D2,
% üçüncü türev D3, ..., şeklinde yazılır. Komut satırlarının sol tarafına
% konulacak harf bir yapı olur içindeki diferansiyel denklem sayısı kadar
% değişken barındırır. Diferansiyel denklem dsolve komutu kullanılarak
% çözülemiyor ise ODE komutları ile sayısal çözüm aranmalıdır.

%%% Sembolik ifadelerin integralleri

% Sembolik ifadelerin belirli ve belirsiz integralini almak için int komutu
% kullanılır.

% int(A) : A sembolik ifadesinin sembolik değişkene göre belirsiz
% integralini alır.

% Aşağıdaki C integral sabitinin eklenmesi gerektiği unutulmamalıdır.

syms t m 
int(t^m);

syms t 
int(4*t^3 - 6*t^2 + 10*t +2);

% int(A, s)
% A sembolik ifadesinin s sembolik değişkenine göre belirsiz integralini
% alır.

syms x s 
A = 4*s^3 + 3*x*s^2 - 8*s - 5*x;
B = int(A, s);

% int(A, a, b) : A sembolik ifadesinin sembolik değişkenine göre [a, b]
% aralığında belirli integralini alır.

syms t 
A = 8*t^3 + 12*t^2 - 4*t -3;
B = int(A, -1, 3);

% int(A,t,a,b)

% Örnek 

syms t c
A = c*t^4 - 3*t^2 + 8*t + 5*c;
int(A ,t, -2, 5);


%%% Sembolik Ortamda Laplace ve Ters Laplace dönüşümleri:

% laplace: Sembolik işlemlerde laplace dönüşümlerde kullanılır. Aşşağıda bu
% komutun çeşitli kullanışları gösterilmiştir.

% Örnek 

syms t 
f = t^4;
laplace(f)

% Örnek 

syms s
f = 1/s^2;
ilaplace(f)































