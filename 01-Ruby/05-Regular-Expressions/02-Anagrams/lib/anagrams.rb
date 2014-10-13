def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  a_string.downcase.gsub(/\W/, "").split("").sort == another_string.downcase.gsub(/\W/, "").split("").sort
end

# p "Monica Lewinsky!".gsub(/\W/, "").split("").sort
# p "Nice silky woman".gsub(/\W/, "").split("").sort

# puts anagrams?("Monica Lewinsky!", "Nice silky woman")
# puts anagrams?("yolo", "loyo")
# puts anagrams?("blef", "blif")

def anagrams_on_steroids?(a_string, another_string)
  # TODO: implement the improved method
  hash1 = {}
  hash2 = {}
  a_string.downcase.gsub(/\W/, "").split("").each {|letter|
    if hash1.key?(letter)
      hash1[letter] += 1
    else
      hash1[letter] = 1
  end
    }
  another_string.downcase.gsub(/\W/, "").split("").each {|letter|
    if hash2.key?(letter)
      hash2[letter] += 1
    else
      hash2[letter] = 1
  end
    }
  hash1 == hash2
end

# METHODE PLUS COURTE :

def anagrams_on_steroids?(a_string, another_string)
  # TODO: implement the improved method
  hash1 = Hash.new 0
  hash2 = Hash.new 0
  a_string.downcase.gsub(/\W/, "").split("").each {|letter| hash1[letter] += 1}
  another_string.downcase.gsub(/\W/, "").split("").each {|letter| hash2[letter] += 1}
  hash1 == hash2
end

# p anagrams_on_steroids?("Monica", "dedefef")
# p anagrams_on_steroids?("Monica Lewinsky!", "Nice silky woman")


