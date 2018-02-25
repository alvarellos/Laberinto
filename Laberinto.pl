trayecto(X,X,T,T) :- esta-en(tesoro,T).
trayecto(X,Y,I,T) :- pasar(X,Z), no-esta-en(Z,I), peligros(L), no-esta-en(Z,L), trayecto(Z,Y,[Z|I],T).

pasar(X,Y) :- contiguo(X,Y).
pasar(X,Y) :- contiguo(Y,X).

peligros([trolls,bandidos]).

contiguo(entrada,fuente).
contiguo(entrada,trolls).
contiguo(fuente,doncella).
contiguo(fuente,limbo).
contiguo(fuente,comida).
contiguo(fuente,bandidos).
contiguo(trolls,tesoro).
contiguo(comida,tesoro).
contiguo(bandidos,tesoro).
contiguo(bandidos,salida).
contiguo(tesoro,salida).
contiguo(doncella,salida).

no-esta-en(X,[]) :- !.
no-esta-en(X,[Y|R]) :- X\=Y, no-esta-en(X,R).

esta-en(X,[X|R]) :- !.
esta-en(X,[Y|R]) :- esta-en(X,R).
