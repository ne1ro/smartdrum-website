class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_salt
      t.string :password_hash
      t.text :about

      t.timestamps
    end
  end
end
