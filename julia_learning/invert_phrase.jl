function invert_phrase(phrase)
  palavras = split(phrase)
  revert_words = reverse(palavras)
  revert_phrase = join(revert_words, " ")
  return revert_phrase
end

println("Frase: Aprender Julia é divertido forma: ", invert_phrase("Aprender Julia é divertido"))
