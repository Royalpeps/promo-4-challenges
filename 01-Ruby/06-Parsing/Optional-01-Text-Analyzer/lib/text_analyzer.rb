# require 'json'
# require 'open-uri'


def analyze(text)
  # TODO: should analyze the text, and return the result hash with all features
  character_count = text.length
  line_count = text.scan(/^[a-zA-Z\.,\']+/).length
  word_count = text.scan(/[a-zA-Z]+/).length
  sentence_count = text.scan(/[A-Z](\w|\s|\,|\:|\;)+\./i).length
  paragraph_count = text.scan(/\n{2}/).length + 1
  average_words_per_sentence = word_count / sentence_count.to_f
  average_sentences_per_paragraph = sentence_count / paragraph_count
  useful_words = text.split(" ") - ["the","are","a","in","of","for","at","or","than","and","on","was","is","it","will","by"]
  useful_words_ratio = useful_words.length / word_count.to_f

  hash = {
  character_count: character_count,
  line_count: line_count,
  word_count: word_count,
  sentence_count: sentence_count,
  paragraph_count: paragraph_count,
  average_words_per_sentence: average_words_per_sentence,
  average_sentences_per_paragraph: average_sentences_per_paragraph,
  # useful_words: useful_words_ratio
  }
hash
end

# p analyze ("Among other public buildings in a certain town, which for many
# reasons it will be prudent to refrain from mentioning, and to
# which I will assign no fictitious name, there is one anciently
# common to most towns, great or small. To , a workhouse; and
# in this workhouse was born; on a day and date which I need not
# trouble myself to repeat, inasmuch as it can be of no possible
# consequence to the reader, in this stage of the business at all
# events; the item of mortality whose name is prefixed to the head
# of this chapter.

# For a long time after it was ushered into this world of sorrow
# and trouble, by the parish surgeon, it remained a matter of
# considerable doubt whether the child would survive to bear any
# name at all; in which case it is somewhat more than probable that
# these memoirs would never have appeared; or, if they had, that
# being comprised within a couple of pages, they would have
# possessed the inestimable merit of being the most concise and
# faithful specimen of biography, extant in the literature of any
# age or country.")

#if password =~ /^(?=.*\d)(?=.*[A-Z])(?=.*[\W_]).{6,}$/


# TO RETURN :
# {
#   character_count: 523,
#   line_count: 42
#   word_count: 145,
#   sentence_count: 32,
#   paragraph_count: 4,
#   average_words_per_sentence: 4.53,
#   average_sentences_per_paragraph: 8
# }


# api_url = 'http://www.rubyinside.com/book/oliver.txt'
# open(api_url) do |stream|
#   text = JSON.parse(stream.read)
#   puts text
# end
# puts text