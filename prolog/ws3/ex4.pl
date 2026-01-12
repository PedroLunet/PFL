% a)

% list_append(L1, L2, L3) :-
% 	append(L1, L2, L3).

list_append([], L, L).


list_append([H1|T1],L2,[H1|Rest]):-
	list_append(T1,L2,Rest).


% b)

list_member(E, L) :-
	append(_,[E|_],L).

% c)

list_last(L, Last) :-
	append(_, [Last],L).

% d)

list_nth(N, L, E) :-
	length(A,N),
	append(A, [E|_], L).

% e)

list_append([], []).

list_append([H|T], L) :-
	list_append(T, Rest),
	append(H, Rest, L).


% f)

list_del(L, E, R) :-
	append(Pre, [E|Rest], L),
	append(Pre, Rest, R).

% g)

list_before(F, S, L) :-
	append(_, [F|Rest], L),
	append(_, [S|_], Rest).

% h)

list_replace_one(X, Y, L1, L2) :-
	append(Pre, [X|Rest], L1),
	append(Pre, [Y|Rest], L2).

% i)

list_repeated(X, L) :-
	append(_, [X|Rest], L),
	append(_, [X|_], Rest).

% j)

list_slice(List1, Index, Size, List2) :-
    length(Prefix, Index),        
    append(Prefix, Rest, List1),  
    length(List2, Size),         
    append(List2, _, Rest).       
	
% k)

list_shift_rotate(List1,N,List2):-
	length(Prefix,N),
	append(Prefix,Suffix,List1),
	append(Suffix,Prefix,List2).











