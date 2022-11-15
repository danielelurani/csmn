%Esercitazione 5
clc

%funzioni da testare
f1 = @(x) (x.^2) - 2;
f2 = @(x) exp(x) - 2;
f3 = @(x) (1./x) - 3;
f4 = @(x) (x-3).^3;

%derivate funzioni da testare
fd1 = @(x) 2.*x;
fd2 = @(x) exp(x);
fd3 = @(x) (-1./(x.^2));
fd4 = @(x) 3.*(x-3).^2;

tol = 1e-6;
kmax = 100;

a1 = sqrt(2);
a2 = log(2);
a3 = 1/3;
a4 = 3;

%eseguo test bisec

%punti di inizio bisezione
b1v1 = 0;
b2v1 = 2;
b1v2 = 0;
b2v2 = 200;

%chiamo metodo di bisezione
[x1v1, k1v1] = bisec(f1,b1v1,b2v1,tol,kmax);
[x1v2, k1v2] = bisec(f1,b1v2,b2v2,tol,kmax);

%calcolo errore assoluto
errb1v1 = abs(x1v1 - sqrt(2));
errb1v2 = abs(x1v2 - sqrt(2));


fprintf('---------------------------------------------\n');
fprintf('\t\t\t Test con metodo di bisezione\n');
fprintf('---------------------------------------------\n');
fprintf('\t\t\tEquazione 1 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v1);
fprintf('Risultato atteso: \t\t\t%e\n', sqrt(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k1v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 28);
fprintf('Errore assoluto ottenuto: \t%e\n', errb1v1);
fprintf('Errore assoluto atteso: \t%e\n', 1.9e-9);

fprintf('\n');

fprintf('\t\t\tEquazione 1 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v2);
fprintf('Risultato atteso: \t\t\t%e\n', sqrt(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k1v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 35);
fprintf('Errore assoluto ottenuto: \t%e\n', errb1v2);
fprintf('Errore assoluto atteso: \t%e\n', 2.9e-9);

fprintf('\n');

%chiamo metodo di bisezione
[x2v1, k2v1] = bisec(f2,b1v1,b2v1,tol,kmax);
[x2v2, k2v2] = bisec(f2,b1v2,b2v2,tol,kmax);

%calcolo errore assoluto
errb2v1 = abs(x2v1 - log(2));
errb2v2 = abs(x2v2 - log(2));

fprintf('\t\t\tEquazione 2 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v1);
fprintf('Risultato atteso: \t\t\t%e\n', log(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k2v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 28);
fprintf('Errore assoluto ottenuto: \t%e\n', errb1v1);
fprintf('Errore assoluto atteso: \t%e\n', 1.8e-9);

fprintf('\n');

fprintf('\t\t\tEquazione 2 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v2);
fprintf('Risultato atteso: \t\t\t%e\n', log(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k2v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 35);
fprintf('Errore assoluto ottenuto: \t%e\n', errb2v2);
fprintf('Errore assoluto atteso: \t%e\n', 2.2e-9);

fprintf('\n');

%equazione 3

%chiamo metodo di bisezione
[x3v1, k3v1] = bisec(f3,b1v1,b2v1,tol,kmax);
[x3v2, k3v2] = bisec(f3,b1v2,b2v2,tol,kmax);

%calcolo errore assoluto
errb3v1 = abs(x3v1 - a3);
errb3v2 = abs(x3v2 - a3);

fprintf('\t\t\tEquazione 3 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v1);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 28);
fprintf('Errore assoluto ottenuto: \t%e\n', errb3v1);
fprintf('Errore assoluto atteso: \t%e\n', 1.2e-9);

fprintf('\n');

fprintf('\t\t\tEquazione 3 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v2);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 35);
fprintf('Errore assoluto ottenuto: \t%e\n', errb3v2);
fprintf('Errore assoluto atteso: \t%e\n', 6.6e-10);

fprintf('\n');


%equazione 4

%chiamo metodo di bisezione
[x4v1, k4v1] = bisec(f4,(4/3),(10/3),tol,kmax);
[x4v2, k4v2] = bisec(f4,(4/3),(10/3),tol,kmax);

%calcolo errore assoluto
errb4v1 = abs(x4v1 - a4);
errb4v2 = abs(x4v2 - a4);

fprintf('\t\t\tEquazione 4 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v1);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 28);
fprintf('Errore assoluto ottenuto: \t%e\n', errb4v1);
fprintf('Errore assoluto atteso: \t%e\n', 1.2e-9);

fprintf('\n');

fprintf('\t\t\tEquazione 4 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v2);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 35);
fprintf('Errore assoluto ottenuto: \t%e\n', errb4v2);
fprintf('Errore assoluto atteso: \t%e\n', 2.5e-10);

fprintf('\n');


%test su Newton

%chiamo metodo di newton
[x1v1, k1v1] = newton(f1,fd1,2,tol,kmax);
[x1v2, k1v2] = newton(f1,fd1,200,tol,kmax);

%calcolo errore assoluto
errn1v1 = abs(x1v1 - sqrt(2));
errn1v2 = abs(x1v2 - sqrt(2));

fprintf('---------------------------------------------\n');
fprintf('\t\t\t Test con metodo di Newton\n');
fprintf('---------------------------------------------\n');
fprintf('\t\t\tEquazione 1 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v1);
fprintf('Risultato atteso: \t\t\t%e\n', a1);
fprintf('Iterazioni ottenute: \t\t%d\n', k1v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 4);
fprintf('Errore assoluto ottenuto: \t%e\n', errn1v1);
fprintf('Errore assoluto atteso: \t%e\n', 0);

fprintf('\n');

fprintf('\t\t\tEquazione 1 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v2);
fprintf('Risultato atteso: \t\t\t%e\n', a1);
fprintf('Iterazioni ottenute: \t\t%d\n', k1v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 11);
fprintf('Errore assoluto ottenuto: \t%e\n', errn1v2);
fprintf('Errore assoluto atteso: \t%e\n', 0);

fprintf('\n');

%equazione 2

%chiamo metodo di newton
[x2v1, k2v1] = newton(f2,fd2,2,tol,kmax);
[x2v2, k2v2] = newton(f2,fd2,200,tol,2000);

%calcolo errore assoluto
errn2v1 = abs(x2v1 - a2);
errn2v2 = abs(x2v2 - a2);

fprintf('\t\t\tEquazione 2 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v1);
fprintf('Risultato atteso: \t\t\t%e\n', a2);
fprintf('Iterazioni ottenute: \t\t%d\n', k2v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 5);
fprintf('Errore assoluto ottenuto: \t%e\n', errn2v1);
fprintf('Errore assoluto atteso: \t%e\n', 0);

fprintf('\n');

fprintf('\t\t\tEquazione 2 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v2);
fprintf('Risultato atteso: \t\t\t%e\n', a2);
fprintf('Iterazioni ottenute: \t\t%d\n', k2v2);
fprintf('Iterazioni attese: \t\t\t>%d\n', 100);
fprintf('Errore assoluto ottenuto: \t%e\n', errn2v2);
fprintf('Errore assoluto atteso: \t%e\n', 97.3);

fprintf('\n');

%equazione 3

%chiamo metodo di newton
[x3v1, k3v1] = newton(f3,fd3,2,tol,kmax);
[x3v2, k3v2] = newton(f3,fd3,0.1,tol,kmax);

%calcolo errore assoluto
errn3v1 = abs(x3v1 - a3);
errn3v2 = abs(x3v2 - a3);

fprintf('\t\t\tEquazione 3 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v1);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 8);
fprintf('Errore assoluto ottenuto: \t%e\n', errn3v1);
fprintf('Errore assoluto atteso: \t%e\n', 2.8e178);

fprintf('\n');

fprintf('\t\t\tEquazione 3 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v2);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 6);
fprintf('Errore assoluto ottenuto: \t%e\n', errn3v2);
fprintf('Errore assoluto atteso: \t%e\n', 6.6e-10);

fprintf('\n');

%equazione 4

%chiamo metodo di newton
[x4v1, k4v1] = newton(f4,fd4,2,tol,kmax);
[x4v2, k4v2] = newton(f4,fd4,2.9,tol,kmax);

%calcolo errore assoluto
errb4v1 = abs(x4v1 - a4);
errb4v2 = abs(x4v2 - a4);

fprintf('\t\t\tEquazione 4 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v1);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 41);
fprintf('Errore assoluto ottenuto: \t%e\n', errb4v1);
fprintf('Errore assoluto atteso: \t%e\n', 4.0e-8);

fprintf('\n');

fprintf('\t\t\tEquazione 4 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v2);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 35);
fprintf('Errore assoluto ottenuto: \t%e\n', errb4v2);
fprintf('Errore assoluto atteso: \t%e\n', 4.8e-8);

fprintf('\n');

%test su metodo corde

%calcolo coefficienti angolari
m11 = fd1(2);
m12 = fd1(200);
m21 = fd2(2);
m22 = fd2(200);
m31 = fd3(2);
m32 = fd3(0.1);
m41 = fd4(2);
m42 = fd4(2.9);

%chiamo metodo delle corde
[x1v1, k1v1] = corde(f1,m11,2,tol,kmax);
[x1v2, k1v2] = corde(f1,m12,200,tol,2000);

%calcolo errore assoluto
errc1v1 = abs(x1v1 - a1);
errc1v2 = abs(x1v2 - a1);

fprintf('---------------------------------------------\n');
fprintf('\t\t\t Test con metodo delle corde\n');
fprintf('---------------------------------------------\n');
fprintf('\t\t\tEquazione 1 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v1);
fprintf('Risultato atteso: \t\t\t%e\n', a1);
fprintf('Iterazioni ottenute: \t\t%d\n', k1v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 14);
fprintf('Errore assoluto ottenuto: \t%e\n', errc1v1);
fprintf('Errore assoluto atteso: \t%e\n', 2.6e-9);

fprintf('\n');

fprintf('\t\t\tEquazione 1 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v2);
fprintf('Risultato atteso: \t\t\t%e\n', a1);
fprintf('Iterazioni ottenute: \t\t%d\n', k1v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 1990);
fprintf('Errore assoluto ottenuto: \t%e\n', errc1v2);
fprintf('Errore assoluto atteso: \t%e\n', 1.9e-6);

fprintf('\n');

%equazione 2

%chiamo metodo delle corde
[x2v1, k2v1] = corde(f2,m21,2,tol,kmax);
[x2v2, k2v2] = corde(f2,m22,200,tol,6000);

%calcolo errore assoluto
errc2v1 = abs(x2v1 - a2);
errc2v2 = abs(x2v2 - a2);

fprintf('\t\t\tEquazione 2 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v1);
fprintf('Risultato atteso: \t\t\t%e\n', a2);
fprintf('Iterazioni ottenute: \t\t%d\n', k2v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 53);
fprintf('Errore assoluto ottenuto: \t%e\n', errc2v1);
fprintf('Errore assoluto atteso: \t%e\n', 2.1e-8);

fprintf('\n');

fprintf('\t\t\tEquazione 2 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v2);
fprintf('Risultato atteso: \t\t\t%e\n', a2);
fprintf('Iterazioni ottenute: \t\t%d\n', k2v2);
fprintf('Iterazioni attese: \t\t\t>%d\n', 2000);
fprintf('Errore assoluto ottenuto: \t%e\n', errc2v2);
fprintf('Errore assoluto atteso: \t%e\n', 192.4);

fprintf('\n');

%equazione 3

%chiamo metodo delle corde
[x3v1, k3v1] = corde(f3,m31,2,tol,3000);
[x3v2, k3v2] = corde(f3,m32,0.1,tol,200);

%calcolo errore assoluto
errc3v1 = abs(x3v1 - a3);
errc3v2 = abs(x3v2 - a3);

fprintf('\t\t\tEquazione 3 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v1);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v1);
fprintf('Iterazioni attese: \t\t\t>%d\n', 2000);
fprintf('Errore assoluto ottenuto: \t%e\n', errc3v1);
fprintf('Errore assoluto atteso: \t%e\n', 2.4e4);

fprintf('\n');

fprintf('\t\t\tEquazione 3 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v2);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 146);
fprintf('Errore assoluto ottenuto: \t%e\n', errc3v2);
fprintf('Errore assoluto atteso: \t%e\n', 9.9e-8);

fprintf('\n');

%equazione 4

%chiamo metodo delle corde
[x4v1, k4v1] = corde(f4,m41,2,tol,4000);
[x4v2, k4v2] = corde(f4,m42,2.9,tol,4000);

%calcolo errore assoluto
errc4v1 = abs(x4v1 - a4);
errc4v2 = abs(x4v2 - a4);

fprintf('\t\t\tEquazione 4 punto 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v1);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v1);
fprintf('Iterazioni attese: \t\t\t>%d\n', 2000);
fprintf('Errore assoluto ottenuto: \t%e\n', errc4v1);
fprintf('Errore assoluto atteso: \t%e\n', 2.7e-2);

fprintf('\n');

fprintf('\t\t\tEquazione 4 punto 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v2);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v2);
fprintf('Iterazioni attese: \t\t\t>%d\n', 2000);
fprintf('Errore assoluto ottenuto: \t%e\n', errc4v2);
fprintf('Errore assoluto atteso: \t%e\n', 2.7e-3);

fprintf('\n');

%eseguo test secanti

%chiamo metodo delle secanti
[x1v1, k1v1] = secanti(f1,1,2,tol,kmax);
[x1v2, k1v2] = secanti(f1,199,200,tol,kmax);

%calcolo errore assoluto
errs1v1 = abs(x1v1 - sqrt(2));
errs1v2 = abs(x1v2 - sqrt(2));


fprintf('---------------------------------------------\n');
fprintf('\t\t\t Test con metodo delle secanti\n');
fprintf('---------------------------------------------\n');
fprintf('\t\t\tEquazione 1 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v1);
fprintf('Risultato atteso: \t\t\t%e\n', sqrt(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k1v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 6);
fprintf('Errore assoluto ottenuto: \t%e\n', errs1v1);
fprintf('Errore assoluto atteso: \t%e\n', 0);

fprintf('\n');

fprintf('\t\t\tEquazione 1 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x1v2);
fprintf('Risultato atteso: \t\t\t%e\n', sqrt(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k1v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 16);
fprintf('Errore assoluto ottenuto: \t%e\n', errs1v2);
fprintf('Errore assoluto atteso: \t%e\n', 2.2e-16);

fprintf('\n');

%equazione 2

%chiamo metodo delle secanti
[x2v1, k2v1] = secanti(f2,2,3,tol,kmax);
[x2v2, k2v2] = secanti(f2,199,200,tol,400);

%calcolo errore assoluto
errs2v1 = abs(x2v1 - log(2));
errs2v2 = abs(x2v2 - log(2));

fprintf('\t\t\tEquazione 2 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v1);
fprintf('Risultato atteso: \t\t\t%e\n', log(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k2v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 9);
fprintf('Errore assoluto ottenuto: \t%e\n', errs1v1);
fprintf('Errore assoluto atteso: \t%e\n', 1.1e-16);

fprintf('\n');

fprintf('\t\t\tEquazione 2 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x2v2);
fprintf('Risultato atteso: \t\t\t%e\n', log(2));
fprintf('Iterazioni ottenute: \t\t%d\n', k2v2);
fprintf('Iterazioni attese: \t\t\t>%d\n', 100);
fprintf('Errore assoluto ottenuto: \t%e\n', errs2v2);
fprintf('Errore assoluto atteso: \t%e\n', 128.6);

fprintf('\n');

%equazione 3

%chiamo metodo delle secanti
[x3v1, k3v1] = secanti(f3,2,3,tol,kmax);
[x3v2, k3v2] = secanti(f3,0.1,0.11,tol,kmax);

%calcolo errore assoluto
errs3v1 = abs(x3v1 - a3);
errs3v2 = abs(x3v2 - a3);

fprintf('\t\t\tEquazione 3 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v1);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 8);
fprintf('Errore assoluto ottenuto: \t%e\n', errs3v1);
fprintf('Errore assoluto atteso: \tinf\n');

fprintf('\n');

fprintf('\t\t\tEquazione 3 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x3v2);
fprintf('Risultato atteso: \t\t\t%e\n', a3);
fprintf('Iterazioni ottenute: \t\t%d\n', k3v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 9);
fprintf('Errore assoluto ottenuto: \t%e\n', errs3v2);
fprintf('Errore assoluto atteso: \t%e\n', 5.0e-16);

fprintf('\n');


%equazione 4

%chiamo metodo delle secanti
[x4v1, k4v1] = secanti(f4,1,2,tol,kmax);
[x4v2, k4v2] = secanti(f4,2.5,2.9,tol,kmax);

%calcolo errore assoluto
errs4v1 = abs(x4v1 - a4);
errs4v2 = abs(x4v2 - a4);

fprintf('\t\t\tEquazione 4 intervallo 1\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v1);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v1);
fprintf('Iterazioni attese: \t\t\t%d\n', 58);
fprintf('Errore assoluto ottenuto: \t%e\n', errs4v1);
fprintf('Errore assoluto atteso: \t%e\n', 9.0e-8);

fprintf('\n');

fprintf('\t\t\tEquazione 4 intervallo 2\n')
fprintf('Risultato ottenuto: \t\t%e\n', x4v2);
fprintf('Risultato atteso: \t\t\t%e\n', a4);
fprintf('Iterazioni ottenute: \t\t%d\n', k4v2);
fprintf('Iterazioni attese: \t\t\t%d\n', 51);
fprintf('Errore assoluto ottenuto: \t%e\n', errs4v2);
fprintf('Errore assoluto atteso: \t%e\n', 7.0e-8);

fprintf('\n');
