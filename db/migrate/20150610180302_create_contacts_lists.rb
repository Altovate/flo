class CreateContactsLists < ActiveRecord::Migration
  def change
    create_table :contacts_lists do |t|
      t.references :contact
      t.references :list
    end
  end
end