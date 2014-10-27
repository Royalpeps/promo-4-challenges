# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new(file)

require "date"

class Post
  # TODO: implement some reader and/or writers
  attr_reader :date, :id
  attr_accessor :votes, :title, :url

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = Date.today
    @votes = 0
  end

  def upvote
    @votes += 1
    DB.execute("UPDATE posts
      SET votes = #{@votes}"
      )
  end

  def save
    @date_db = @date.to_time.to_i
    if @id != nil
    DB.execute("UPDATE posts
      SET title = '#{@title}', url = '#{@url}', date = #{@date_db}, votes = #{votes}
      WHERE id = #{@id}")
    else
    @id = DB.last_insert_row_id
    DB.execute("INSERT INTO posts (id, title, url, date, votes)
      VALUES (#{@id}, '#{@title}', '#{@url}', #{@date_db}, #{@votes})")
    end
  end

  def destroy
    DB.execute("DELETE FROM posts
    WHERE id = #{@id}")
  end

  # def self.find(post_id)
  #   @post_a = DB.execute("SELECT * FROM posts WHERE id = #{post_id}")
  #   if @post_a = []
  #     return nil
  #   else
  #     @post = [@post_a.id, @post_a.title, @post_a.url, Time.at(@post_a.date).to_datetime, @post_a.votes ]
  #     return @post
  #   end
  # end

  def self.find(post_id)
    DB.execute("SELECT * FROM posts WHERE id = #{post_id} IF EXISTS 'posts'")
  #   if @post_a = []
  #     return nil
  #   else
  #     DB.execute("SELECT * FROM posts WHERE id = #{post_id}")
  #   end
  end


    # it "should load a post from the database" do
    #   post = Post.find(1)
    #   expect(post).to_not be_nil
    #   expect(post).to be_a Post
    #   expect(post.id).to eq 1
    #   expect(post.title).to eq 'Hello world'
    # end

end















