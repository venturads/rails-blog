class RemoveColumnsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :username, :string
    remove_column :posts, :user_id, :string
   
  end
end
