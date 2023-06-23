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

pertenceUniversidade(Pessoa, Instituicao) :-
  (frequenta(Pessoa, Instituicao); funcionario(Pessoa, Instituicao)).

pertenceUniversidade(Instituicao) :-
  findall(Pessoa, pertenceUniversidade(Pessoa, Instituicao), TodasPessoas),
  write(TodasPessoas).
