class AddImageToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :image_id, :string
  end
end
