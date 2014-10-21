require 'rubygems'
require 'open-uri'

text_oliver = open("http://www.rubyinside.com/book/oliver.txt").read

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
  useful_words: useful_words_ratio
  }
hash
end


p analyze(text_oliver)