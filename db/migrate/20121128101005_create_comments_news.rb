class CreateCommentsNews < ActiveRecord::Migration
  def change
    create_table :comments_news do |t|
      t.references :user
      t.references :news
      t.text :data

      t.timestamps
    end
    add_index :comments_news, :user_id
    add_index :comments_news, :news_id
  end
end
