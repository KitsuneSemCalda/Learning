#!/usr/bin/gprolog --consult-file

ultimo([X], X).
ultimo([_|Resto], X) :- ultimo(Resto, X).
