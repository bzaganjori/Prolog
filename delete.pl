delete(_,[],[]).
delete(X,[X],[]).	
delete(X,[X|R1],R2) :-
	delete(X,R1,R2).
delete(X,[Y|R1],[Y|R2]) :-
	\+ is_list(Y), delete(X,R1,R2).
delete(X, [Y|R1], [Z|R3]) :-
	delete(X,Y,Z), delete(X,R1,R3).