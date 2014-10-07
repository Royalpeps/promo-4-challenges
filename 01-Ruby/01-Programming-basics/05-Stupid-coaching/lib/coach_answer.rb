def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.end_with? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
 end


def coach_answer_enhanced(your_message)
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
        return ""
    elsif your_message.upcase == your_message && your_message != " " && your_message != ""
        return "I can feel your motivation! #{coach_answer(your_message)}"
    else return "#{coach_answer(your_message)}"
  end
  # if your_message.end_with? "?"
  #   part2 = "Silly question, get dressed and go to work!"
  # elsif your_message == "I am going to work right now!" || your_message == "I AM GOING TO WORK RIGHT NOW!"
  #   part2 = ""
  # else
  #   part2 = "I don't care, get dressed and go to work!"
  # end
  # return "#{part1}#{coach_answer(your_message)}"
end



#  case your_message
#  when your_message == your_message.upcase && your_message.include? "?" puts "Silly question, get dressed and go to work!"
# when your_message == your_message.upcase && your_message == "I am going to work right now!" return
#   when your_message.include? "?" puts "Silly question, get dressed and go to work!"
#   when your_message == "I am going to work right now!" return
#   else puts "I don't care, get dressed and go to work!"
#   end





# puts "Enter your message"
# your_message = gets.chomp
# coach_answer_enhanced(your_message)


