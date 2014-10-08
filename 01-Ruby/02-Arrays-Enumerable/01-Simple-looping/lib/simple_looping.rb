def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  value = min
  while min < max
    min += 1
    value = value + min
  end
  value
end

puts sum_with_while(1, 4)

def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  value = 0
  for n in (min..max)
    value = value + n
  end
  value
end

puts sum_with_for(1, 4)

def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
  # num = min
  # case num
  #   when num > max
  #     return "min doit etre inferieur a max"
  #   when num < max
  #     return value = sum_recursive(min+1, max) + min
  #   else
  #     return min
  # end
  return min if min == max
  return value = sum_recursive(min+1, max) + min if min < max
  fail ArgumentError, "min > max" if min > max
end

puts sum_recursive(6, 4)
