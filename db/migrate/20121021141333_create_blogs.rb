class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :header
      t.text :data

      t.timestamps
    end
  end
end
