function yy = canint(x,y,xx)

%questa funzione costruisce il polinomio interpolante nella forma canonica
%prende in input i vettori di ascisse e ordinate di inerpolazione x e y e
%le ascisse per costruire il grafico xx
%ritorna in output il valore del polinomio nelle ascisse date

%rendo i vettori x e y vettori colonna in caso non lo fossero
x = x(:);
y = y(:);

%dimensione dei vettori colonna (n elementi)
n = size(x,1);

%cotruisco matrice di vandermonde
X = zeros(n);

for j = 1:n
    X(:,j) = x.^(j-1);
end

%risolvo sistema lineare
a = X\y;
m = size(xx,1);
yy = zeros(m,1);


%p = a0*x^0 + a1*x^1 + ... + an*x^n in teoria
%p = a1*x^0 + a2*x^1 + ... + a(n)*x^(n-1) su Matlab

%costruisco polinimio interpolante
for j = 1:m
    s = 0;
    for i = 1:n
        s = s + a(i)*(xx(j)^(i-1));
    end
    yy(j) = s;
end

%grafico
plot(x,y,'or',xx,yy,'b-')
legend('dati da interpolare','polinomio interpolante')





