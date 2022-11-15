%esercitazione 6

clc

%script che esegue il test con le due forme diverse del polinomio interpolante
%(forma canonica e forma di Lagrange), con due modi diversi di scegliere
% le ascisse di interpolazione 
% (punti equispaziati o zeri del polinomio di Chebychev) e due diverse funzioni
%da interpolare

%i grafici si apriranno tutti ognuno in una seprata finestra

%funzione 1 con forma canonica e nodi di chebyshev
fun1 = @(x) 1./(1+25.*x.^2);
n1 = 50;
k1 = [0:1:n1]';
x1 = cos(((2*k1+1)*pi)./(2*n1+2));
y1 = fun1(x1);
m1 = 100;
xx1 = linspace(x1(1), x1(n1), m1)';
yy1 = canint(x1,y1,xx1);
title('Funzione f(x)=1/(1+25x^2) in forma canoninca e nodi di Chebyshev');
figure

%funzione 1 con forma canonica e punti equispaziati
fun1 = @(x) 1./(1+25.*x.^2);
x1 = linspace(-1,1,10);
y1 = fun1(x1);
m1 = 100;
xx1 = linspace(x1(1), x1(end), m1)';
yy1 = canint(x1,y1,xx1);
title('Funzione f(x)=1/(1+25x^2) in forma canoninca e punti equispaziati');
figure


%funzione 1 con forma di Lagrange e nodi di chebyshev 
fun3 = @(x) 1./(1+25.*x.^2);
n3 = 50;
k3 = [0:1:n3]';
x3 = cos(((2*k3+1)*pi)./(2*n3+2));
y3 = fun3(x3);
m3 = 100;
xx3 = linspace(x3(1), x3(n3), m3)';
yy3 = lagrint(x3,y3,xx3);
title('Funzione f(x)=1/(1+25x^2) con rappresentazione di Lagrange e nodi di Chebyshev');
figure

%funzione 1 con rappresentazione di Lagrange e punti equispaziati
fun1 = @(x) 1./(1+25.*x.^2);
x1 = linspace(-1,1,10);
y1 = fun1(x1);
m1 = 100;
xx1 = linspace(x1(1), x1(end), m1)';
yy1 = lagrint(x1,y1,xx1);
title('Funzione f(x)=1/(1+25x^2) con rappresentazione di Lagrange e punti equispaziati');
figure

%funzione 2 con forma canonica e nodi di chebyshev 
fun2 = @(x) sin(2*pi.*x);
n2 = 50;
k2 = [0:1:n2]';
x2 = cos(((2*k2+1)*pi)./(2*n2+2));
y2 = fun2(x2);
m2 = 100;
xx2 = linspace(x2(1), x2(n2),m2)';
yy2 = canint(x2,y2,xx2);
title('Funzione f(x)=sin(2pi*x) in forma canoninca e nodi di Chebyshev');
figure

%funzione 2 con forma canonica e punti equispziati 
fun2 = @(x) sin(2*pi.*x);
x2 = linspace(-1,1,20);
y2 = fun2(x2);
m2 = 100;
xx2 = linspace(x2(1), x2(end),m2)';
yy2 = canint(x2,y2,xx2);
title('Funzione f(x)=sin(2pi*x) in forma canoninca e punti equispaziati');
figure


%funzione 2 con forma di Lagrange e nodi di chebyshev 
fun4 = @(x) sin(2*pi.*x);
n4 = 50;
k4 = [0:1:n4]';
x4 = cos(((2*k4+1)*pi)./(2*n4+2));
y4 = fun4(x4);
m4 = 100;
xx4 = linspace(x4(1), x4(n4), m4)';
yy4 = lagrint(x4,y4,xx4);
title('Funzione f(x)=sin(2pi*x) con rappresentazione di Lagrange e nodi di Chebyshev');
figure

%funzione 2 con rappresentazione di Lagrange e punti equispziati 
fun2 = @(x) sin(2*pi.*x);
x2 = linspace(-1,1,20);
y2 = fun2(x2);
m2 = 100;
xx2 = linspace(x2(1), x2(end),m2)';
yy2 = lagrint(x2,y2,xx2);
title('Funzione f(x)=sin(2pi*x) con rappresentazione di Lagrange e punti equispaziati');


