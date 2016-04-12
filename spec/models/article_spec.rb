require 'rails_helper'
# require "refile/file_double"

RSpec.describe Article, type: :model do
  it "allows attaching an image" do
    # post = Article.new
    #
    # post.image = Refile::FileDouble.new("dummy", "logo.png", content_type: "image/png")
    # post.save
    #
    # expect(post.image_id).not_to be_nil
  end
end
