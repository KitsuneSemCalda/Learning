function produto_cartesiano(conjunto1, conjunto2)
  produto = []

  for elemento1 in conjunto1
    for elemento2 in conjunto2
      par = (elemento1, elemento2)
      push!(produto, par)
    end
  end
  return produto
end

conjunto1 = [1, 2, 3]
conjunto2 = ["a", "b"]

resultado = produto_cartesiano(conjunto1, conjunto2)
println(resultado)
