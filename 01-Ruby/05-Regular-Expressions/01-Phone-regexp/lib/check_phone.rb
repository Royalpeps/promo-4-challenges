# def french_phone_number?(phone_number)
#   # TODO: true or false?
#   nb_string = phone_number.tr_s(" ","").tr_s("-","")
#   if nb_string.length == 10 && nb_string[0] == "0" && nb_string[1] != "0"
#     return true
#   elsif nb_string.length == 12 && nb_string[0,3] == "+33"
#     return true
#   else
#     return false
#   end
# end



def french_phone_number?(phone_number)
  # TODO: true or false?
  nb_string = phone_number.tr_s(" ","").tr_s("-","")
  if nb_string =~ /^(0)[^0](\d{8})$/
    return true
  elsif nb_string =~ /^\W33(\d{9})$/
    return true
  else
    return false
  end
end






puts french_phone_number?("0665363636")
puts french_phone_number?("06 65 36 36")
puts french_phone_number?("+33 6 19 57 79 71")
