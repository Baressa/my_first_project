class AddImageThumbToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :image_thumb_id, :string
  end
end
