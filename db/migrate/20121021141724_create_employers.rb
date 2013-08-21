class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :firstname
      t.string :lastname
      t.string :department

      t.timestamps
    end
  end
end
