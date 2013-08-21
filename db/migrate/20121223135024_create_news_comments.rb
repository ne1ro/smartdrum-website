class CreateNewsComments < ActiveRecord::Migration
  def change
    create_table :news_comments do |t|
      t.references :user
      t.text :text
      t.references :news

      t.timestamps
    end
    add_index :news_comments, :user_id
    add_index :news_comments, :news_id
  end
end
