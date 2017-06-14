class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :User_id, :integer
  end
end
