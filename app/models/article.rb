class Article < ActiveRecord::Base
	has_attached_file :image, default_url: "/images/missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
