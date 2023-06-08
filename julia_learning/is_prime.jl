function is_prime(n)
  if n < 2
    return false
  end

  for i in 2:(n - 1)
    if n % i == 0
      return false
    end
  end
  return true
end

println("O número 3 é primo? ", is_prime(3))
println("O número 15 é primo? ",is_prime(15))
