class Article < ActiveRecord::Base

  validates :title, presence: true,
                      length: { minimum: 5 }

  validates :text, presence: true,
                      length: { minimum: 5 }

  validates :url, presence: true,
                      length: { minimum: 5 }

  extend FriendlyId
  friendly_id :url, :use => :slugged

  attachment :image, type: :image
  attachment :image_thumb, type: :image
end
