class CreateCommentsProds < ActiveRecord::Migration
  def change
    create_table :comments_prods do |t|
      t.references :user
      t.references :production
      t.text :data

      t.timestamps
    end
    add_index :comments_prods, :user_id
    add_index :comments_prods, :production_id
  end
end
