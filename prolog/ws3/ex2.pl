% a)

list_size([],0).

list_size([_|T], S) :-
	list_size(T, S1),
	S is S1 + 1.	

% b)

list_sum(List,Sum):-
	list_sum(List,0,Sum).

list_sum([],Acc,Acc).

list_sum([H|T],Acc,Sum):-
	Acc1 is Acc+H,
	list_sum(T,Acc1,Sum).

% c)

list_prod(List, Prod) :-
	list_prod(List, Prod, 1).

list_prod([], Acc, Acc).

list_prod([H|T], Prod,Acc) :-
	Acc1 is Acc * H,
	list_prod(T, Prod, Acc1).

% d)

inner_prod(L1, L2, R) :-
	inner_prod(L1, L2, R, 0).

inner_prod([], [], R, R).

inner_prod([H1 | T1], [H2 | T2], R, Acc) :-
	T is H1 * H2,
	Acc1 is Acc + T,
	inner_prod(T1,T2,R, Acc1).


% e)

count(E, L, N) :-
	count(E, L, N, 0).

count(_, [], N, N).	

count(E, [E | T], N, Acc) :-
	Acc1 is Acc + 1,
	count(E, T, N, Acc1).

count(E, [H | T], N, Acc) :-
	E \= H,
	count(E, T, N, Acc).
	



invert(List, ReversedList) :-
    invert(List, [], ReversedList).

invert([], Acc, Acc).

invert([H|T], Acc, Result) :-
    invert(T, [H|Acc], Result).



