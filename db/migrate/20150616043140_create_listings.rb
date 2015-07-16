class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :contact
      t.references :list

      t.timestamps
    end
  end
end
