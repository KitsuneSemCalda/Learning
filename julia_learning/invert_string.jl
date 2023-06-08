function invert_string(string)
  inv_str = ""
  str_lengh = length(string)
  while (str_lengh > 0)
    inv_str *= string[str_lengh]
    str_lengh -= 1
  end

  return inv_str
end

println("A inversão de adoleta é: ",invert_string("adoleta"))
