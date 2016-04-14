class AddImageThumbToNews < ActiveRecord::Migration
  def change
    add_column :news, :image_thumb_id, :string
  end
end
