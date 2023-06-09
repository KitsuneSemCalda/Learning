function frequencyCount(arqName)
  arquivo = open(arqName, "r")

  frequency = Dict{String, Int64}()

  for linha in eachline(arquivo)
    linha = lowercase(linha)
    palavras = split(linha)
    for palavra in palavras
      if haskey(frequency, palavras)
      frequency[palavra] += 1
    else
      frequency[palavra] = 1
      end
    end
  end
  close(arquivo)

  return frequency
end

frequency = frequencyCount("aux_arq.txt")
for (palavra, frequencia) in frequency
  println("$palavra: $frequencia")
end
