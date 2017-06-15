class RenameUserIdIdToUserId < ActiveRecord::Migration
  def change
    rename_column :profiles, :user_id_id, :user_id
  end
end
