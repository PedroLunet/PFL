% bird(Name, Species, Gender, Colors)
bird(robinho,  robin,   male,   [red, brown, white]).
bird(robina,     robin,   female, [brown, red, white]).
bird(ferrugem,   robin,   male,   [brown, gray]).
bird(arcoiris,   parrot,  male,   [red, blue, green, yellow]).
bird(verdeja,    parrot,  female, [green, yellow]).
bird(minerva,    owl,     female, [brown, white]).
bird(noctis,     owl,     male,   [gray, white]).
bird(sabia,      owl,     female, [beige, brown]).

most_colorful(Species, Name, NColors) :-
	bird(Name, Species, _, Colors),
	length(Colors, NColors),
	\+ (
		bird(_, Species, _, Colors2),
		length(Colors2, NColors2),
		NColors2 > NColors
	).