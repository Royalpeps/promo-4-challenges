# def array_to_hash(array)
#   #TODO: implement the method :)
#   hash = {}
#   array.each_with_index {|a,index| hash[index] = a }
#   hash
# end

# p array_to_hash(["coucou", "cest", "moi"])




def array_to_hash(array)
  #TODO: implement the method :)
  hash = {}
  array.each_with_index {|a,index|
    index = yield(index) if block_given?
    hash[index] = a }
  hash
end

p array_to_hash(["coucou", "cest", "moi"]) { |index|
  "key#{index + 1}" }


# def array_to_hash(array)
#   #TODO: implement the method :)
#   hash = {}
#   array.each_with_index {|a|
#     index = yield
#     hash[index] = a }
#   hash
# end

# p array_to_hash(["coucou", "cest", "moi"]) do |index|
#   "key#{index + 1}"
# end