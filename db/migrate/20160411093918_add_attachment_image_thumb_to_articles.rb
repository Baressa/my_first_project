class AddAttachmentImageThumbToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image_thumb
    end
  end

  def self.down
    remove_attachment :articles, :image_thumb
  end
end
