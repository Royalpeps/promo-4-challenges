require 'sinatra'
require "sinatra/reloader" if development?
require_relative "config/application.rb"

set :views, proc { File.join(root, "app/views") }



get '/' do
  # TODO: fetch posts from database.
  #       to pass them to the view, store them in an instance variable

  @posts = Post.all

  erb :posts  # The rendered HTML is in app/views/posts.erb
end

post '/create_post' do
  name = params["name"]
  url = params["url"]

  Post.create(name: name, url: url, votes: 0)

  redirect("/")
end


# post '/upvote' do

#     id = params["name"]

#     @upvoted_post = post.find(id)
#     @upvoted_post.votes += 1
#     @upvoted_post.save

#   redirect("/")
# end


get "/post/:post_id/upvote" do

    id = params["post_id"]

    upvoted_post = Post.find(id)
    upvoted_post.votes += 1
    upvoted_post.save

  redirect("/")
end

get "/post/:post_id" do
  id = params[:post_id]
  @post = Post.find(id)

  erb :post
end



