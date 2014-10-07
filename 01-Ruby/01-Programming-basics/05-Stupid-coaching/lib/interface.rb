require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.


puts "salut mon gars"

my_message = gets.chomp

until my_message == "I am going to work right now!" || my_message == "I AM GOING TO WORK RIGHT NOW!"
  puts coach_answer_enhanced(my_message)
  my_message = gets.chomp
  end