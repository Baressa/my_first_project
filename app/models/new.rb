class New < ActiveRecord::Base
  extend FriendlyId
  friendly_id :url, :use => :slugged

  attachment :image, type: :image
  attachment :image_thumb, type: :image
end
