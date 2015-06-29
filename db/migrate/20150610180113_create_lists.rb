class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :owner
      t.text :name
      
      t.timestamps null: false
    end
  end
end
