function calc_array(vector)
  count = 0
  for i in 1:length(vector)
    count += vector[i]
  end

  return count
end

println(calc_array([1, 2, 3, 4, 5]))
