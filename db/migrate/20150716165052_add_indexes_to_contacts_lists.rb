class AddIndexesToContactsLists < ActiveRecord::Migration
  def change
    add_index :contacts_lists, [:contact_id, :list_id], unique: true
  end
end
