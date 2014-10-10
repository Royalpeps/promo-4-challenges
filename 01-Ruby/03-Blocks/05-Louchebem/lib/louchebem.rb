# Encoding: utf-8

def louchebemize(sentence)
  # TODO: implement your louchebem translator
  array = sentence.split(" ")
  voyelles = ["a","e","i","o","u","y"]
  array.map! { |word|
    if word.length > 1
        voyelle1 = voyelles.include? word[0].downcase
        voyelle2 = voyelles.include? word[1].downcase
        suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"].sample
        if voyelle1 == false && voyelle2 == false
          word = word[2..-1] + word[0] + word[1]
          word = "l" + word + suffix
        elsif voyelle1 == true
          word = "l" + word + suffix
        else
         word = word[1..-1] + word[0]
         word = "l" + word + suffix
        end
    else word
    end
  }
  p array.join(" ")
end

louchebemize("ah tu vas chez l'ami c'est ca ? ")

# Il faut gerer les cas où le mot est "l'ami" ou "c'est"