class Article < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title

	attachment :image, type: :image
	attachment :image_thumb, type: :image
end
