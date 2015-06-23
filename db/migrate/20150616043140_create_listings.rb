class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings
      t.belongs_to :contact, index: true
      t.belongs_to :list, index: true

      t.timestamps
    end
  end
end
