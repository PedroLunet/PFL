% ==========================================
% Family Facts
% ==========================================

male(frank).
male(jay).
male(javier).
male(merle).
male(phil).
male(mitchell).
male(joe).
male(manny).
male(cameron).
male(bo).
male(dylan).
male(luke).
male(rexford).
male(calhoun).
male(george).

female(grace).
female(dede).
female(gloria).
female(barb).
female(claire).
female(pameron).
female(haley).
female(alex).
female(lily).
female(poppy).

% Generation 1 to 2
parent(grace, phil).
parent(frank, phil).
parent(dede, claire).
parent(jay, claire).
parent(dede, mitchell).
parent(jay, mitchell).
parent(jay, joe).
parent(gloria, joe).
parent(gloria, manny).
parent(javier, manny).
parent(barb, cameron).
parent(merle, cameron).
parent(barb, pameron).
parent(merle, pameron).

% Generation 2 to 3
parent(phil, haley).
parent(claire, haley).
parent(phil, alex).
parent(claire, alex).
parent(phil, luke).
parent(claire, luke).
parent(mitchell, lily).
parent(cameron, lily).
parent(mitchell, rexford).
parent(cameron, rexford).
parent(pameron, calhoun).
parent(bo, calhoun).

% Generation 3 to 4
parent(dylan, george).
parent(haley, george).
parent(dylan, poppy).
parent(haley, poppy).

% MARRIAGES (marriage/3)
marriage(dede,jay,1968).
marriage(jay,gloria,2008).

% DIVORCES (divorce/3)
divorce(jay,dede,2003).

% ==========================================
% Rules
% ==========================================

% Basic Relations
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

% Grandparents
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandfather(X, Y) :- male(X), grandparent(X, Y).
grandmother(X, Y) :- female(X), grandparent(X, Y).

% Siblings
% Sharing at least one parent (General)
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

% Sharing both parents (Full Siblings)
full_sibling(X, Y) :- 
    parent(M, X), parent(M, Y), 
    parent(F, X), parent(F, Y), 
    M \= F, X \= Y.

% Sharing only one parent (Half Siblings)
half_sibling(X, Y) :- 
    sibling(X, Y), 
    \+ full_sibling(X, Y).

brother(X, Y) :- 
	male(X), 
	sibling(X, Y).

sister(X, Y) :- 
	female(X), 
	sibling(X, Y).

% Extended Family
uncle(U, X) :- 
	parent(P, X), 
	sibling(U, P), 
	male(U).

aunt(A, X) :- 
	parent(P, X), 
	sibling(A, P), 
	female(A).

% Cousins: Your parent and their parent are siblings
cousin(X, Y) :- 
	parent(P1, X), 
	parent(P2, Y), 
	sibling(P1, P2).

% a)

ancestor_of(X, Y) :- 
	parent(X, Y).
ancestor_of(X, Y) :- 
	parent(X, Z), 
	ancestor_of(Z, Y).

% b)

descendant_of(X, Y) :- 
	parent(Y, X).
descendant_of(X, Y) :- 
	parent(Z, X), 
	descendant_of(Z, Y).

% c)

marriage_years(X, Y, Years) :-
	(marriage(X,Y,S);marriage(Y,X,S)),
	(divorce(X,Y,E);divorce(Y,X,E)),
	Years is E - S.

% d)

%i.) descendant_of(X,gloria), \+ descendant_of(X,jay).

%ii.) ancestor_of(X,haley), \+ ancestor_of(X,lily).

%iii.) (marriage(dede, X,_);marriage(X, dede,_)),\-(divorce(dede, X,_);divorce(X, dede,_)).

% e)

born(jay, 1946-5-23).
born(jamon, 1946-5-23). 
born(claire, 1970-11-13). 
born(mitchell, 1973-7-10).


%i.)

dateSplit(YR-M-D,YR,M,D).

before(A, B) :-
	dateSplit(A, YR1, M1, D1),
	dateSplit(B, YR2, M2, D2),
	(YR1 < YR2 ; (YR1 = YR2, M1 < M2) ; (YR1 = YR2, M1 = M2, D1 < D2)).

%ii.)

older(X, Y, X) :-
	born(X, DX),
	born(Y, DY),
	before(DX,DY).

older(X, Y, Y) :-
	born(X, DX),
	born(Y, DY),
	before(DX,DY).

%iii.)

oldest(X) :-
	born(X, DateX),
	\+ (                   
        born(_Y, DateY), 
        before(DateY, DateX)
    ).
