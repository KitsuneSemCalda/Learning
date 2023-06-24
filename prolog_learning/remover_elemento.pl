#!/usr/bin/gprolog --consult-file

remover([], _, []).  % Caso Base: A lista está vazia

remover([X|L1], X, L1) :- !. % Caso onde X é encontrado no inicio da lista L1, removemos X e L2 é o restante da lista.

% Se o elemento X não está no inicio da lista continuamos procurando na cauda da lista
remover([Y|L1], X, [Y|L2]) :-
  remover(L1, X, L2).
