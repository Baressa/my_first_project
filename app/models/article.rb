class Article < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title

	attachment :image
	attachment :image_thumb
end
