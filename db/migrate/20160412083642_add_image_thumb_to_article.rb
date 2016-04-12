class AddImageThumbToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_thumb_id, :string
  end
end
