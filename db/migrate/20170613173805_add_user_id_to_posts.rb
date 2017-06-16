class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :User, :integer
  end
end
