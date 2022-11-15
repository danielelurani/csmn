function yy = lagrint(x,y,xx)

%questa funzione costruisce il polinomio interpolante nella forma di
%Lagrange
%prende in input i vettori di ascisse e ordinate di inerpolazione x e y e
%le ascisse per costruire il grafico xx
%ritorna in output il valore del polinomio nelle ascisse date

%Lj(x) = ((x-x1)/(xj-x1))*((x-x2)/(xj-x2))*...*((x-xn)/(xj-xn))
%p(x) = y(1)*L0(x) + y(2)*L1(x) + ... + y(n)*Ln-1(x)

%rendo i vettori x e y vettori colonna in caso non lo fossero
x = x(:);
y = y(:);

%dimensione dei vettori colonna (n elementi)
n = size(x,1);

%denominatori
den = zeros(n,1);

for j = 1:n
    den(j) = prod(x(j) - x([1:j-1,j+1:end]));   %prodotto denominatori
end

m = size(xx,1);
yy = zeros(m,1);

for i=1:m
    num = prod(xx(i)-x)./(xx(i)-x);             %prodotto numeratori
    L = num./den;
    yy(i) = y'*L;                               %polinomio caratteristico
end

%grafico
plot(x,y,'or',xx,yy,'b-')
legend('dati da interpolare','polinomio interpolante')




