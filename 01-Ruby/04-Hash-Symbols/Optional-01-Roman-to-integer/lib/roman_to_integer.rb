ROMAN_NUMBERS = {
  "I" => 1,
  "IV" => 4,
  "V" => 5,
  "IX" => 9,
  "X" => 10
}


def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
  array = roman_string.chars
  array = array.each_with_index.map {|number,index|
    if number == "I" && array[index+1] == "V"
      number = [number,array[index+1]].join
      array[index+1] = "out"
      number
    elsif number == "I" && array[index+1] == "X"
      number = [number,array[index+1]].join
      array[index+1] = "out"
      number
    else
      number
    end
      }
  array.delete("out")
  sum = 0
  array_integer = array.each { |number| sum += ROMAN_NUMBERS[number]}
  sum
end

p roman_to_integer('IV')
puts "-"
p roman_to_integer('XII')
puts "-"
p roman_to_integer('XIX')
puts "-"
p roman_to_integer('IX')
puts "-"
p roman_to_integer('XXXIV')

# testing your program
# puts roman_to_integer('IV') == 4 # => true
# puts roman_to_integer('XII') == 12 # => true
# puts roman_to_integer('XIX') == 19 # => true

