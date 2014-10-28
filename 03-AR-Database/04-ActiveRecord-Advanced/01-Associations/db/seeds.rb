# TODO: Write a seed

require "faker"

# TODO: Write a seed to insert 100 posts in the database
5.times do

  username = Faker::Name.name
  email = Faker::Internet.email
  user = User.new(username: username, email: email)
  user.save

  i = (5..10).to_a.sample
  i.times do
    name = Faker::Internet.domain_word
    url = Faker::Internet.url
    votes = 0
    user.posts.create(name: name, url: url, votes: votes)
  end
end