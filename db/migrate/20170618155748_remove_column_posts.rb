class RemoveColumnPosts < ActiveRecord::Migration
  def change
     remove_column :posts, :User, :string
  end
end
