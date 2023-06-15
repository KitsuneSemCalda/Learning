#!/usr/bin/gprolog --consult-file

minorOfThree(X, Y, Z, X) :- X =< Y, X =< Z.
minorOfThree(X, Y, Z, Y) :- Y =< X, Y =< Z.
minorOfThree(X, Y, Z, Z) :- Z =< X, Z =< Y.
