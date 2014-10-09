def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  # array = array.each_with_index.select {|a,index| index % 2 == 1 }
  # array.inject(:+)
  sum = 0
  array.each_with_index {|a,index| sum += a if index % 2 == 1 }
  sum
end

puts sum_odd_indexed([12,43543,43,4,32])

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select {|a| a % 2 == 0}
end

puts even_numbers([1,2,3,4])

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject {|a| a.length > max_length}
end

puts short_words(["coucou","hello", "bo"], 3)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.detect {|a| a < limit}
end

puts first_under([39,33,546,12,34], 20)


def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map! {|a| "#{a}!"}
end

puts add_bang(["hello","adrien"])

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.inject(:*)
end

puts product([2,3,4])


def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  array.each_slice(2).map { |a| a.sort }
end

p sorted_pairs(["say","my","name","say","my","name"])

