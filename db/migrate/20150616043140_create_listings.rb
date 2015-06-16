class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :list_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
