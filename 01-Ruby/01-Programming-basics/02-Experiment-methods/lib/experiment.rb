# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
  return "#{a_string}".strip
  #puts "#{a_string}".strip
    # TODO: return a copy of the string with leading and trailing whitespaces removed
  # example: get_rid_of_surrounding_whitespaces("  hey yo  ") => "hey yo"
end

#get_rid_of_surrounding_whitespaces(" coucou chaton ")

def belongs_to?(a_string, a_word)
  return a_string.include? a_word
  #puts "OK" if a_string.include? a_word
  # TODO: return true if a_string contains a_word
  # example: belongs_to?("hey jude", "jude") => true
end

#belongs_to?("coucou chaton","chaton")

def replace(initial_string, old_letter, new_letter)
  return initial_string.gsub old_letter, new_letter
  # puts initial_string.gsub old_letter, new_letter
  # TODO: return a copy of the string with the new letter replacing the old one
  # example: replace("casanova", "a", "o") => "cosonovo"
end

#replace("bobo","o","i")

def exactly_divide(an_integer, a_divider)
  return an_integer / a_divider.to_f
  # TODO: return divison of an_integer by a_divider (computing the floating division, NOT the euclidean one)
  # example: exactly_divide(13, 4) => 3.25
end

def divisible_by_two?(an_integer)
  return an_integer.even?
  # TODO: return true if an_integer is divisible by 2
  # example: divisible_by_two?(6) => true
end

def random_subset(an_array, sample_size)
  return an_array.sample(sample_size)
  # TODO: return a random subset of an_array with size sample_size
  # example: random_subset(('a'..'z').to_a, 4) => ["u", "q", "l", "t"]
end

def randomize(an_array)
  return an_array.shuffle
  # TODO: return a randomized copy of an_array
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
end

def ascending_order(an_array)
  return an_array.sort
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
end