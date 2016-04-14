class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.text :text
      t.string :slug, null: false
      t.string :url, null: false
      t.timestamps null: false
    end
     add_index :news, :slug, :unique => true
  end
end
