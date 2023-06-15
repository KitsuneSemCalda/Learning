#!/usr/bin/gprolog --consult-file

minorOfTwo(X, Y, X) :- X =< Y.
minorOfTwo(X, Y, Y) :- Y < X.
