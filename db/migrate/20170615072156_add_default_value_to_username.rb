class AddDefaultValueToUsername < ActiveRecord::Migration
  def up
    change_column :profiles, :username, :string, default: 'venturads'
    change_column :profiles, :bio, :string, default: 'my bio'
    change_column :profiles, :gender, :string, default: 'none'
    change_column :profiles, :city, :string, default: 'none'
    change_column :profiles, :state, :string, default: 'none'
  end

  def down
    change_column :profiles, :username, :string, default: nil
    change_column :profiles, :bio, :string, default: nil
    change_column :profiles, :gender, :string, default: nil
    change_column :profiles, :city, :string, default: nil
    change_column :profiles, :state, :string, default: nil
  end
end
