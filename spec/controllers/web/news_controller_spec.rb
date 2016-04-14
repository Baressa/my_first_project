require 'rails_helper'

RSpec.describe Web::NewsController, type: :controller do

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

    it "loads all of the posts into @new" do
      new1, new2 = create(:new), create(:new)
      get :index
      expect(assigns(:news)).to match_array([new1, new2])
    end
	end

  describe "GET #show" do
    before {
      @new1 = create(:new)
    }

		it "rassigns the requested video to the @article" do
      get :show, id: @new1.url
      assigns(:new).should == @new1
    end

		it "render show tempalte" do
      get :show, id: @new1
      response.should render_template :show
    end
	end
end
