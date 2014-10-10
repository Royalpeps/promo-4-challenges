require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list

array = []

puts "Type a student name:"
name = gets.chomp
array << name


# array = Array.new(name)
# puts "#{array}"

# puts "Type another student name (or press enter to finish):"
# name_other = gets.chomp
# array << name_other
name_other = "test"
while name_other != ""
  puts "Type another student name (or press enter to finish):"
  name_other = gets.chomp
  array << name_other
end

array = wagon_sort(array)
array = array - [""]

puts "Congratulations! Your Wagon has #{array.count} students:"

array_last = array.last
array = array - ["#{array_last}"]
puts "- #{array.join(", ")} and #{array_last}"