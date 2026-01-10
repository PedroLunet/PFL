job(technician, eleuterio).
job(technician, juvenaldo).
job(analyst, leonilde).
job(analyst, marciliano).
job(engineer, osvaldo).
job(engineer, porfirio).
job(engineer, reginaldo).
job(supervisor, sisnando).
job(chief_supervisor, gertrudes).
job(secretary, felismina).
job(director, asdrubal).
supervised_by(technician, engineer).
supervised_by(engineer, supervisor).
supervised_by(analyst, supervisor).
supervised_by(supervisor, chief_supervisor).
supervised_by(chief_supervisor, director).
supervised_by(secretary, director).

directSupervisor(_A, _B) :-
	job(_JA, _A),
	job(_JB, _B),
	supervised_by(_JB,_JA).

supervisedBySameRole(A, B) :-
    job(JA, A),
    job(JB, B),
    supervised_by(JA, S),
    supervised_by(JB, S),
    A \= B. 

supervisesMoreThanOne(A) :-
	job(P, A),
	supervised_by(J1, P),
	supervised_by(J2, P),
	J1\=J2.

superviserOfSuperviser(A, B) :-
	job(_JA, A),
	job(_JB, B),
	supervised_by(_JB, _SB),
	supervised_by(_SB, _JA).


% a)

is_above(HighRole, LowRole) :-
    supervised_by(LowRole, HighRole).

is_above(HighRole, LowRole) :-
    supervised_by(LowRole, MiddleRole),
    is_above(HighRole, MiddleRole).

superior(X, Y) :-
	job(JX, X),
	job(JY, Y),
	is_above(JX, JY).
