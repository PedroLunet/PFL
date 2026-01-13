% a)

print_s(0,_).

print_s(N, S) :-
	N > 0,
	N1 is N - 1,
	write(S),
	print_s(N1, S).

% b)

print_st([]).

print_st([H|T]) :-
	put_code(H),
	print_st(T).

print_text(St, C, N) :-
	write(C),
	print_s(N,' '),
	print_st(St),
	print_s(N,' '),
	write(C),
	nl.

% c)

print_banner(St, S, P) :-
	length(St,SL),
	LL is SL + P + P + 2,
	InnerWidth is LL - 2,
	print_s(LL, S),
	nl,
	write(S),
	print_s(LL - 2, ' '),
	write(S),
	nl,
	print_text(St, S, P),
	write(S),
	print_s(InnerWidth, ' '),
	write(S),
	nl,
	print_s(LL, S),
	nl.


% d)

read_number(X) :-
    read_number_aux(0, X).

read_number_aux(Acc, X) :-
    peek_code(10), !,
    get_code(_),
    X = Acc. 


read_number_aux(Acc, X) :-
    get_code(C),
    C >= 48, C =< 57,
    !,
    Digit is C - 48,
    NewAcc is Acc * 10 + Digit,
    read_number_aux(NewAcc, X).


% e)

read_until_between(Min, Max, Value) :-
    write('Enter a number between '), write(Min), write(' and '), write(Max), write(': '),
    read_number(Value),
    Value >= Min,
    Value =< Max,

read_until_between(Min, Max, Value) :-
    write('Invalid number. Please try again.'), nl,
    read_until_between(Min, Max, Value).









