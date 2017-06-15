class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :username
      t.text :bio
      t.attachment :image
      t.string :gender
      t.string :city
      t.string :state
      t.string :location

      t.timestamps null: false
    end
  end
end
