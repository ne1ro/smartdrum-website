class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :header
      t.text :text

      t.timestamps
    end
  end
end
