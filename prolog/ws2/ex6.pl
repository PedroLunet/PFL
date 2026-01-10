% a)

gcd(X,0,X).

gcd(X, Y, G) :-
	Y > 0,
	R is X mod Y,
	gcd(Y, R, G).

% b)

lcm(X, Y, M) :-
	X > Y,
	A is X * Y,
	gcd(X,Y,B),
	M is A div B.

lcm(X, Y, M) :-
	Y >= X,
	A is X * Y,
	gcd(Y,X,B),
	M is A div B.




