% bird(Name, Species, Gender, Colors)
bird(robinho,  robin,   male,   [red, brown, white]).
bird(robina,     robin,   female, [brown, red, white]).
bird(ferrugem,   robin,   male,   [brown, gray]).
bird(arcoiris,   parrot,  male,   [red, blue, green, yellow]).
bird(verdeja,    parrot,  female, [green, yellow]).
bird(minerva,    owl,     female, [brown, white]).
bird(noctis,     owl,     male,   [gray, white]).
bird(sabia,      owl,     female, [beige, brown]).

unique_colors(Species, ListOfColors) :-
	unique_colors_aux(Species, [], ListOfColors).

unique_colors_aux(Sp, Acc, Res) :-
	bird(_, Sp, _, Cl),
	member(C, Cl),
	\+ member(C, Acc), !,
	unique_colors_aux(Sp, [C|Acc], Res).

unique_colors_aux(_,Acc,Acc).