class CreateCommentsBlogs < ActiveRecord::Migration
  def change
    create_table :comments_blogs do |t|
      t.references :user
      t.references :blog
      t.text :data

      t.timestamps
    end
    add_index :comments_blogs, :user_id
    add_index :comments_blogs, :blog_id
  end
end
