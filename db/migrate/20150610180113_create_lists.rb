class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :name
      t.references :user_id
      
      t.timestamps null: false
    end
  end
end
