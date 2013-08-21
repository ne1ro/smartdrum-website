class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :firstname
      t.string :lastname
      t.string :image
      t.text :about

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
