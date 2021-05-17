:- module(init,
	[  
		init/3
	]).

:-use_module(library(lists)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% init(PistasFilas, PistasColumns, Grilla)
%

init(
	[[1,1],[1,1],[1],[1,1],[5]],
	[[2],[2,1],[1,1],[2,1],[2]],
	[[ _ ,"#","X", _ , _ ],
	[ _ , _ , _ ,"#", _ ],
	["X", _ , _ , _ ,"X"],
	["#", _ ,"X", _ , _ ],
	[ _ , _ , _ , _ ,"#"]
	]
).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% gameStatus(+Board, +Status)
%

gameStatus(Board,Status):-
	compararMatrices(Board,[["X","#","X","#","X"],
["X","#","X","#","X"],
["X","X","#","X","X"],
["#","X","X","X","#"],
["#","#","#","#","#"]
]),
	Winner \= "Player".

compararListas([],[]).
compararListas(L,L).

compararMatrices([Aux|L1],[Aux2|L2]):-compararListas(Aux,Aux2),compararMatrices(L1,L2).
compararMatrices([],[]).
