class CreateRecordComments < ActiveRecord::Migration
  def change
    create_table :record_comments do |t|
      t.references :user
      t.text :text
      t.references :record

      t.timestamps
    end
    add_index :record_comments, :user_id
    add_index :record_comments, :record_id
  end
end
