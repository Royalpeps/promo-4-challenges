require "json"
require "rest-client"
require "open-uri"

# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.

top_stories = RestClient.get 'https://hacker-news.firebaseio.com/v0/topstories.json'
array_10 = top_stories.split(",")[1..10]

10.times do |i|
  api_url = "https://hacker-news.firebaseio.com/v0/item/#{array_10[i]}.json"
  open(api_url) do |stream|
    post_content = JSON.parse(stream.read)
    name = post_content["title"]
    url = post_content["url"]
    votes = post_content["score"]
    post = Post.new(name: name, url: url, votes: votes)
    post.save
    end
end