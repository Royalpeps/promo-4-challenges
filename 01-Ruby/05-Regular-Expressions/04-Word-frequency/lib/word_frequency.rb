def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words
  hash = Hash.new 0
  File.open("source-text.txt", "r").each_line do |line|
    array = line.gsub(/[^a-zA-Z']/," ").split(" ")
    array.each {|word| hash[word] += 1 }
  end
  array_stop_words = []
  File.open("stop_words.txt", "r").each_line do |line|
    array_stop_words << line.gsub(/[^a-zA-Z']/," ").split(" ")
  end

  array_stop_words.flatten.each {|word| word.downcase}


  hash = hash.delete_if {|word,nb| array_stop_words.include?(word.downcase) }



  array_nb = hash.sort_by { |word, nb| nb }
  array_nb = array_nb.reverse[0..number_of_word-1]

  p array_nb

  hash_nb = Hash.new 0
  array_nb.each {|couple| couple.each {|word,nb| hash_nb[word] = nb}}
  hash_nb
end


p most_common_words("source-text.txt", "stop_words.txt", 3)