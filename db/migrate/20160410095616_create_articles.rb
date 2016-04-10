class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.date :create_date

      t.timestamps null: false
    end
  end
end
