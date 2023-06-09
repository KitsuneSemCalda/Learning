function factorial(num)
  if num == 0
    return 1
  end
    num * factorial(num - 1)
end

println("Factorial de 10: ", factorial(10))
