% Definicion del grafo
edge(a, b, 5).
edge(b, c, 7).
edge(a, c, 10).
edge(c, d, 3).
edge(b, d, 8).

% Regla principal para encontrar rutas
path(Start, End, Path, Cost) :-
    travel(Start, End, [Start], Path, Cost).

% Reglas auxiliares para la búsqueda de rutas
travel(Node, Node, Path, Path, 0).
travel(Node, End, Visited, Path, Cost) :-
    edge(Node, NextNode, StepCost),
    \+ member(NextNode, Visited),
    travel(NextNode, End, [NextNode|Visited], Path, RemainingCost),
    Cost is StepCost + RemainingCost.
