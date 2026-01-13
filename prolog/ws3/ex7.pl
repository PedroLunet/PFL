% a)

is_ordered([]).
is_ordered([_]).

is_ordered([H1, H2 | T]) :-
	H1 =< H2,
	is_ordered([H2 | T]).

% b)

insert_ordered(V, [], [V]).

% insert
insert_ordered(V, [H|T], [V, H|T]) :-
    V =< H.

% NOT insert
insert_ordered(V, [H|T], [H|NewT]) :-
    V > H,
    insert_ordered(V, T, NewT).

% c)

insert_sort([], []).

insert_sort([Head | Tail], SortedList) :-
    insert_sort(Tail, SortedTail),  
    insert_ordered(Head, SortedTail, SortedList).







