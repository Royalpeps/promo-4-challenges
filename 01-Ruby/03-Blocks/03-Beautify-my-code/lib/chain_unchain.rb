def shuffle_word(a_word)
  # TODO: refactor this method
  a_word.upcase.chars.to_a.shuffle
end


def quote_prime_numbers(n)
  # TODO: refactor this method
  array = (1..n)
  array = array.find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }
  array = array.map{ |prime_num| "#{prime_num} is prime"}
end