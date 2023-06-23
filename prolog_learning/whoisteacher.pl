#!/usr/bin/gprolog --consult-file

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, ufla).
frequenta(maria, ufla).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, ufla).
funcionario(carlos, ufla).

aluno2professor(Professor, Aluno) :-
  aluno(Aluno, Disciplina),
  frequenta(Aluno, Instituicao),
  professor(Professor, Disciplina),
  funcionario(Professor, Instituicao).

aluno2professor(Professor) :-
  findall(Aluno, aluno2professor(Professor, Aluno), Alunos),
  write(Alunos).
