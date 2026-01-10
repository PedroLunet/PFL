% a)
factorial(1, 1).

factorial(N, F) :-
    N > 1,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% b)

sum_rec(1, 1).

sum_rec(N, Sum) :-
	N > 1,
	N1 is N - 1,
	sum_rec(N1, Sum1),
	Sum is N + Sum1.


% c)

power_rec(X, 1, X).

power_rec(X, Y, P) :-
	Y > 1,
	Y1 is Y - 1,
	power_rec(X, Y1, P1),
	P is X * P1.

% d)

square_rec(1, 1).

square_rec(N, S) :-
	N > 1,
	power_rec(N, 2, S).

% e)

fibonacci(0,0).
fibonacci(1,1).

fibonacci(N,F) :-
	N > 1,
	N1 is N - 1,
	N2 is N - 2,
	fibonacci(N1,F1),
	fibonacci(N2,F2),
	F is F1 + F2.

% f)

isOdd(N) :-
    N mod 2 =\= 0.

collatz(1,0).

collatz(N,S) :-
	N > 1,
	isOdd(N),
	N1 is 3 * N + 1,
	collatz(N1, S1),
	S is S1 + 1.

collatz(N,S) :-
	N > 1,
    N mod 2 =:= 0,
	N1 is N//2,
	collatz(N1, S1),
	S is S1 + 1.

% g)

isPrime(1).
isPrime(2).

isPrime(N) :-
    N > 2,
    \+ hasFactor(N, 2). 

hasFactor(N, D) :-
    N mod D =:= 0.

hasFactor(N, D) :-
    D * D < N,       
    D1 is D + 1,
    hasFactor(N, D1).
