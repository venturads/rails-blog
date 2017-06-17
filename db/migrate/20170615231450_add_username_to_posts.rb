class AddUsernameToPosts < ActiveRecord::Migration
  def change
    add_references :posts, :username, foreign_key: true
  end
end
