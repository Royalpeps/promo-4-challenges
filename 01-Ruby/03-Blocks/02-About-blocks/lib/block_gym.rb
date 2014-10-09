def tag(tag_name, attr = nil)
  # TODO:  Build HTML tags around  content given in the block
  #        The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
 #  puts "#{tag_name}"
 #  if attr != nil
 #    puts "#{attr}"
 #  end
 #   variable = yield
 #   puts "#{variable}"
 # end
  title = yield
  if attr != nil
    return "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{title}</#{tag_name}>"
  else
    return "<#{tag_name}>#{title}</#{tag_name}>"
  end
end




# tag("h1") do |tag|
#   "Some Title"
# end

tag("h1", ["id", "title"]) { "Some Title" }


var1 = tag("h2") { "KITT" }

var2 = tag("a", ["href", "http://kitt.lewagon.org"]) { "#{var1}" }

var3 = tag("div", ["class", "kitt-container"]) { "#{var2}" }

puts var3
# tag_name_h1 = "h1"

# tag("h1","Some Title") do |x,y|
#   "<#{x}>#{y}</#{x}>"
# end




# tag(tag_name_h1) do |tag|
#   "<#{tag}>Some Title</#{tag}>"
# end

# def method_name(parameter)
#   yield parameter
# end

# method_name(argument) do |x|
# "<#{argument}>#{y}</#{x}>"
# end

# { block }





# A faire :

# tag("h1") do |tag|
#   "Some Title"
# end






# "<#{tag_name} #{array[0]}='#{array[1]}'>#{attr}</#{tag_name}>"

# le "attr = nil" signifie que c'est la valeur par defaut

# puts tag("h1", ["id", "title"], tag("a",["href=","http://kitt.lewagon.org"],tag("h2", [], "KITT")))


# puts tag("h1", ["id", "title"], "Some Title")
# "<div class='kitt-container'><a href='http://kitt.lewagon.org'><h2>KITT</h2></a></div>"

def timer_for
  # TODO:  Return time taken to execute the given block
  start_time = Time.now
  yield
  duration = Time.now - start_time
end