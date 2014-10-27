class CreatePosts < ActiveRecord::Migration
  def change
    # TODO: your code here to create the posts table
      create_table :posts do |p|
      p.string    :name
      p.string    :url
      p.timestamps  # add 2 columns, `created_at` and `updated_at`
      end
  end
end
