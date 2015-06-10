class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :home
      t.string :help
      t.string :faqs
      t.string :contact
      t.string :terms
      t.string :privacy
      t.string :about
      t.string :pricing

      t.timestamps null: false
    end
  end
end
