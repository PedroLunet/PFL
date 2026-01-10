pilot(lamb).
pilot(besenyei).
pilot(chambliss).
pilot(maclean).
pilot(mangold).
pilot(jones).
pilot(bonhomme).

team(breitling, lamb).
team(red_bull, besenyei).
team(red_bull, chambliss).
team(mediterranean_racing_team, maclean).
team(cobra, mangold).
team(matador, jones).
team(matador, bonhomme).

plane(mx2, lamb).
plane(edge540, besenyei).
plane(edge540, chambliss).
plane(edge540, maclean).
plane(edge540, mangold).
plane(edge540, jones).
plane(edge540, bonhomme).

circuits(istanbul).
circuits(porto).
circuits(budapest).

win(jones, porto).
win(mangold, budapest).
win(mangold, istanbul).

gates(istanbul, 9).
gates(budapest, 6).
gates(porto, 5).

teamWin(Team, Circuit) :-
	win(Pilot, Circuit),
	team(Team, Pilot).


% a)

most_gates(X) :-
	gates(X, G),
	\+ 
		(
		gates(_, M),    
        M > G
		).

% b)

least_gates(X) :-
	gates(X, G),
	\+ 
		(
		gates(_, M),    
        M < G
		).

% c)

gate_diff(X) :-
	most_gates(A),
	least_gates(B),
	gates(A, AG),
	gates(B, BG),
	X is AG - BG.

% d)

same_team(X, Y) :-
	team(Team, X),
    team(Team, Y),
    X \= Y.
	

% e)

is_from_winning_team(P, C) :- 
	teamWin(WT,C),
	team(WT, P).

