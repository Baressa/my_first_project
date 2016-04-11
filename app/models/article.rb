class Article < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title


	has_attached_file :image, default_url: "/images/missing.jpg"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_attached_file :image_thumb, default_url: "/images/missing.jpg"
	validates_attachment_content_type :image_thumb, content_type: /\Aimage\/.*\Z/


end
