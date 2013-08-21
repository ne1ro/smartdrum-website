class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :name
      t.text :description
      t.float :cost
      t.integer :count

      t.timestamps
    end
  end
end
