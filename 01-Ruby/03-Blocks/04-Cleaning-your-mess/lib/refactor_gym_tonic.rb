# Very dirty code to make some dirty gym...
# def hop_hop_hop(number_of_exercises)
#   for i in (1..number_of_exercises) do
#     counter = 0
#     until counter == i do
#       print "hop! "
#       counter += 1
#     end
#     unless counter != i # Test if reaching the end of the current exercise.
#       # Prints message in that case
#       print 'One more time..' + "\n"
#     end
#     # Reset counter to 0 for the next exercise
#     counter = 0
#   end
# end

# hop_hop_hop(6)


def hop_hop_hop(number_of_exercises)
  i = 0
  until i == number_of_exercises do
    i += 1
    puts ("hop! " * i) + "One more time.."
  end
end

hop_hop_hop(6)