x = -5:5;
y = x.^2 + 2.*x + 1;
z= x.^3 + 5.*x - 5; 
t = x.^4 -6.*x;

hold on
plot(x,y, 'r-')
plot(x,z, 'b:')
plot(x,t, 'k--')
title('y, z ve t grafikleri')
xlabel('x1')
ylabel('x2')
grid on
axis square
axis([-15 15 -800 800])