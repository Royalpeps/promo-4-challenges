require "faker"

# TODO: Write a seed to insert 100 posts in the database
100.times do
  name = Faker::Internet.domain_word
  url = Faker::Internet.url
  votes = 0
  post = Post.new(name: name, url: url, votes: votes)
  post.save
end
