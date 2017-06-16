class AddUsernameToPosts < ActiveRecord::Migration
  def change
    #add_reference :posts, :username, index: true, foreign_key: true
  end
end
