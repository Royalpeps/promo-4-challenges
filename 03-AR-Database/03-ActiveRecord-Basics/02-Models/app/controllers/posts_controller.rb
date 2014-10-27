require_relative "../views/post_view.rb"
require_relative "../models/post.rb"


class PostsController

  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    @posts = Post.all
    @view.print_posts(@posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    title = @view.ask_for_title
    url = @view.ask_for_url
    votes = 0
    post = Post.new(title: title, url: url, votes: votes)
    post.save
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    title = @view.ask_for_title
    post = Post.find_by(title: title)
    post.title = @view.ask_for_new_title
    post.url = @view.ask_for_new_url
    post.save
    # post.update(title: '#{new_title}', url: '#{new_url}')
    # post.save
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    title = @view.ask_for_title
    post = Post.find_by(title: title)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    title = @view.ask_for_title
    post = Post.find_by(title: title)
    post.votes += 1
    post.save
  end

end


