# Encoding: utf-8

def mail_joke(email)
  # TODO: Return (not print!) a joke suited to the email provided
  # yo = email
  match_data = email.match(/^([a-zA-Z0-9_\-\.]+)@(\w+)\.(\w+)$/)

  if email =~ /^([a-zA-Z0-9_\-\.]+)@gmail\.com$/
    "#{match_data[1].tr_s(".", " ")}, you're an average but modern person"
  elsif email =~ /^([a-zA-Z0-9_\-\.]+)@live\.com$/
    "#{match_data[1].tr_s(".", " ")}, aren't you born before 1973?"
  elsif email =~ /^([a-zA-Z0-9_\-\.]+)@(\w+)\.(com|org)$/
    "Well done #{match_data[1].tr_s(".", " ")}, you're skilled and capable"
  elsif email =~ /^([a-zA-Z0-9_\-\.]+)@(\w+)\.(\w+)$/
    "Sorry #{match_data[1].tr_s(".", " ")}, we don't know how to judge '#{match_data[2]}.#{match_data[3]}'"
  else
    raise ArgumentError.new('Enter a correct email address')
  end
  # case yo
  # when yo =~ /^(\.|\w)+@(\w+)\.(com|org)$/ then return "beau gosse #{match_data[1].tr_s("."," ")}"
  # when yo =~ /^(\.|\w)+@gmail\.com$/ then return "pas trop mal #{match_data[1].tr_s("."," ")}"
  # when yo =~ /^(\.|\w)+@live\.com$/ then return "t'es old school #{match_data[1].tr_s("."," ")}"
  # when yo =~ /^(\.|\w)+@(\w+)\.(^[com|org])$/ then return "impossible de juger #{match_data[1].tr_s("."," ")}"
  # end
end

# p mail_joke("adrienmontcoudiol@gmail.com")
# p mail_joke("adrienmontcoudiol@live.org")
# p mail_joke("adrien.montcoudiol@monsite.com")
# p mail_joke("adrien.montcoudiol@gmail.bla")
# p mail_joke("adrien.montcoudiolgmail.bla")
