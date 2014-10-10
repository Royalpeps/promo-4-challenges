def bugged_concatenate(array)
  #array = array[0] + array[1].to_i + array[2] + array[3] + array[4].upcase
  #return array.join("")
  #{}"#{[array[0] + array[1] + array[2]].to_i}#{array[3]}#{array[4].upcase}"
  #array.each { |a| a.to_s}
  array.reduce("") { |a, e| a.to_s + e.to_s }.upcase
end

def build_1984_title
  bugged_concatenate([1, "9", 84, " ", "George Orwell"])
end

#puts build_1984_title