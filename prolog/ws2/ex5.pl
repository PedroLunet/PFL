% a)

% Wrapper
factorial(N, F) :-
    factorial(N, 1, F).

% Base Case
factorial(0, F, F).

% Recursive Step
factorial(N, Acc, F) :-
    N > 0,
    NewAcc is Acc * N,
    N1 is N - 1,
    factorial(N1, NewAcc, F).

% Wrapper
sum_rec(N, Sum) :-
	sum_rec(N, 0, Sum).

% Base Case
sum_rec(0,Sum,Sum).

% Recursive Step
sum_rec(N, A, Sum) :-
	N > 0,
	A1 is A + N,
	N1 is N - 1,
	sum_rec(N1, A1, Sum).


% Wrapper
power_rec(X,Y,P) :- 
	power_rec(X,Y,P,1).

% Base Case
power_rec(_,0,P,P).

% Recursive Step
power_rec(X, Y, P, A) :-
	Y > 0,
	A1 is A * X,
	Y1 is Y - 1,
	power_rec(X, Y1, P, A1).


% Wrapper
fibonacci(N, F) :-
    fibonacci(N, 0, 1, F).

% Base Case
fibonacci(0, A, _, A).

% Recursive Step
fibonacci(N, A, B, F) :-
    N > 0,
    N1 is N - 1,
    Sum is A + B,
    fibonacci(N1, B, Sum, F).
	

% b) Tail recursion is more efficient

