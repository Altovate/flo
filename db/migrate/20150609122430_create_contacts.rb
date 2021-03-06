class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :publication
      t.string :phone
      t.string :email
      t.string :twitter
      t.boolean :verified
      t.references :owner
      t.references :user

      t.timestamps null: false
    end
  end
end
