class AddDefaultValueToCity < ActiveRecord::Migration
 def up
    change_column :profiles, :gender, :string, default: 'none'
    change_column :profiles, :city, :string, default: 'none'
    change_column :profiles, :state, :string, default: 'none'
    change_column :profiles, :location, :string, default: 'none'
  end

  def down
    change_column :profiles, :gender, :string, default: nil
    change_column :profiles, :city, :string, default: nil
    change_column :profiles, :state, :string, default: nil
    change_column :profiles, :location, :string, default: nil
  end
end
