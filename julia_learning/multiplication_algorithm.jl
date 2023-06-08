function mul_parts(x)
  return (x ^ 2) / 4
end 

function multiplication(a, b)
  return (mul_parts(a + b) - mul_parts(a - b))
end

println(multiplication(100, 100))
println(multiplication(5, 3))
println(multiplication(4, 4))
