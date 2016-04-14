class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :title, null: false
      t.text :text
      t.string :slug, null: false
      t.string :url, null: false
      t.timestamps null: false
    end
     add_index :stocks, :slug, :unique => true
  end
end
