gf(X,Z) :- f(X,Y), p(Y,Z).
p(X,Y) :- f(X,Y).
p(X,Y) :- m(X,Y).
f(adam,beth).
f(adam,bill).
m(beth,chris).
f(bill,ann).
