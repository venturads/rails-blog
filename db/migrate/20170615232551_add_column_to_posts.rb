class AddColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :username, :reference
  end
end
