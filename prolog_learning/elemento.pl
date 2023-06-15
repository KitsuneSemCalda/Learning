#!/usr/bin/gprolog --consult-file

elemento(1, [X|_], X) :- !.
elemento(N, [_|T], X) :- N > 1, N1 is N - 1, elemento(N1, T, X).
