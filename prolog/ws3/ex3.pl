% a)

invert(L1, L2) :-
	invert(L1, L2, []).

invert([], Acc, Acc).

invert([H | T], L2, Acc) :-
	invert(T, L2, [H | Acc]).

% b)

del_one(Elem,[Elem|T],T).

del_one(E, [H|T], [H | T2]) :-
	E \= H,
	del_one(E,T,T2).

% c)

del_all(_, [], []).

del_all(E,[E|T],L) :-
	del_all(E,T,L).

del_all(E, [H|T], [H | T2]) :-
	E \= H,
	del_all(E,T,T2).


% d)

del_all_list([], L, L).

del_all_list([H | T], L1, L2) :-
	del_all(H,L1,A),
	del_all_list(T,A,L2).

% e)

del_dups([],[]).

del_dups([H|T], [H|T1]) :-
	del_all(H,T, C),
	del_dups(C, T1).

% bonus: [a,b,b,a] -> [b,a] FRANCISCA

del_dups_last([],[]).

del_dups_last([H|T],List2):- % H is in tail (dup) - skip it
    memberchk(H,T),
    del_dups_last(T,List2).

del_dups_last([H|T],[H|Rest]):- % H is not in tail (dup) - keep it
    \+ memberchk(H,T),
    del_dups_last(T,Rest).

% f)

list_perm([],[]).

list_perm([H|T],L2) :-
	del_one(H, L2, C),
	list_perm(T, C).

% g)

replicate(0, _, []).

replicate(N, E, [E|T]) :-
	N1 is N - 1,
	replicate(N1, E, T).

% h)

intersperse(_,[],[]).

intersperse(_,[O],[O]).

intersperse(E,[H|T],[H, E|T1]) :-
	intersperse(E, T, T1).

% i)

insert_elem(_, [], Elem, [Elem]).

insert_elem(0, T, Elem, [Elem|T]).

insert_elem(I, [H|T], X, [H|Rest]) :-
	I1 is I - 1,
	insert_elem(I1,T,X,Rest).

% j)

delete_elem(_, [], _, []).

delete_elem(0,[H|T],H,T).

delete_elem(Index,[H|T],Elem,[H|Rest]):-
    Index > 0,
    I is Index - 1,
    delete_elem(I,T,Elem,Rest).

% k)

replace([],_,_,_,[]).

replace([H|T],0,H,New,[New|T]).

replace([H|T],Index,Old,New,[H|Rest]):-
    Index > 0,
    I is Index - 1,
    replace(T,I,Old,New,Rest).



