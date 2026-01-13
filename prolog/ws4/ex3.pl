% immature(X):- adult(X), !, fail.
% immature(_X).
% RED
% adult(X):- person(X), !, age(X, N), N >=18.
% RED
% adult(X):- turtle(X), !, age(X, N), N >=50.
% RED
% adult(X):- spider(X), !, age(X, N), N>=1.
% RED
% adult(X):- bat(X), !, age(X, N), N >=5.
% RED
