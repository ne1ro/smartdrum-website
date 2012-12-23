class CreateProdComments < ActiveRecord::Migration
  def change
    create_table :prod_comments do |t|
      t.references :user
      t.text :text
      t.references :product

      t.timestamps
    end
    add_index :prod_comments, :user_id
    add_index :prod_comments, :product_id
  end
end
