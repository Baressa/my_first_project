require 'rails_helper'

RSpec.describe Web::ArticlesController, type: :controller do

	describe "GET #index" do
    it "respond success HTTP 200" do
      get :index
      response.should be_success
      response.should have_http_status(200)
    end

    it "renders the index template" do
      get :index
      response.should render_template :index
    end

    it "loads all of the posts into @articles" do
      article1, article2 = create(:article), create(:article)
      get :index
      expect(assigns(:articles)).to match_array([article1, article2])
    end
	end

  describe "GET #show" do
    before {
      @article1 = create(:article)
    }

		it "rassigns the requested video to the @article" do
      get :show, id: @article1.url
      assigns(:article).should == @article1
    end

		it "render show tempalte" do
      get :show, id: @article1
      response.should render_template :show
    end
	end
end
