#!/usr/bin/gprolog --consult-file

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Resultado) :-
  N > 1,
  N1 is N - 1,
  N2 is N - 2,
  fibonacci(N1, Result1),
  fibonacci(N2, Result2),
  Resultado is Result1 + Result2.
