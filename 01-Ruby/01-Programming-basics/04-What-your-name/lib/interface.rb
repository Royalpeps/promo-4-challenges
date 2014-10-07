require_relative "compute_name"

puts "Enter your first name"
fn = gets.chomp

puts "Enter your middle name"
mn = gets.chomp

puts "Enter your last name"
ln = gets.chomp

puts "Hello #{compute_name(fn, mn, ln)}"


# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

