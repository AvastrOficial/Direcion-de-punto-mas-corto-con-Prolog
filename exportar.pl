:- [main].

% Exporta la ruta encontrada a un archivo
exportar_ruta(Start, End) :-
    path(Start, End, Path, _),
    open('ruta.txt', write, Stream),
    write(Stream, 'Ruta encontrada: '), write(Stream, Path), nl(Stream),
    exportar_nodos(Stream, Path),
    exportar_aristas(Stream, Path),
    close(Stream),
    write('Ruta exportada correctamente.'), nl.

% Exporta los nodos
exportar_nodos(Stream, [Node]) :-
    write(Stream, 'Nodo: '), write(Stream, Node), nl(Stream).
exportar_nodos(Stream, [Node|Rest]) :-
    write(Stream, 'Nodo: '), write(Stream, Node), nl(Stream),
    exportar_nodos(Stream, Rest).

% Exporta las aristas
exportar_aristas(_, [_]).
exportar_aristas(Stream, [Node1, Node2|Rest]) :-
    (edge(Node1, Node2, Cost) -> true ; edge(Node2, Node1, Cost)),
    write(Stream, 'Arista: '), write(Stream, Node1), write(Stream, ' -> '),
    write(Stream, Node2), write(Stream, ' [Coste: '), write(Stream, Cost), write(Stream, ']'), nl(Stream),
    exportar_aristas(Stream, [Node2|Rest]).
