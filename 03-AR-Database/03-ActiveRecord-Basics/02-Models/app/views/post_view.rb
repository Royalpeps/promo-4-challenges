class PostView
  # TODO: implement some methods here when controller needs to `puts` or `gets`

  def print_posts(posts)
    posts.each do |post|
     # stars = "*" * post.votes
     # date = post.date.strftime("%d/%m %H:%M")
     puts "#{post.title}, #{post.url} (votes: #{post.votes})"
    end
  end

 def ask_for_title
   puts "Title?"
   print "> "
   gets.chomp
 end

 def ask_for_url
   puts "URL?"
   print "> "
   gets.chomp
 end

 def ask_for_new_title
   puts "New title?"
   print "> "
   gets.chomp
 end

 def ask_for_new_url
   puts "New URL?"
   print "> "
   gets.chomp
 end


 def print_post_not_found(id)
   puts "Could not find any post with id '#{id}'"
 end

 def print_successfully_created(post)
   puts "Post '#{post.title}' has been successfully created"
 end

 def print_successfully_updated(post)
   puts "Post '#{post.title}' has been successfully updated"
 end

 def print_successfully_destroyed(post)
   puts "Post '#{post.title}' has been successfully destroyed"
 end

 def print_successfully_upvoted(post)
   puts "Post '#{post.title}' has been successfully upvoted"
 end

end