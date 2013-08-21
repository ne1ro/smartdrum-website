class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :header
      t.text :text

      t.timestamps
    end
  end
end
