class AddImageToNews < ActiveRecord::Migration
  def change
    add_column :news, :image_id, :string
  end
end
