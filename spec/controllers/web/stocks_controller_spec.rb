require 'rails_helper'

RSpec.describe Web::StocksController, type: :controller do

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
      stock1, stock2 = create(:stock), create(:stock)
      get :index
      expect(assigns(:stocks)).to match_array([stock1, stock2])
    end
	end

  describe "GET #show" do
    before {
      @stock1 = create(:stock)
    }

		it "rassigns the requested video to the @article" do
      get :show, id: @stock1.url
      assigns(:stock).should == @stock1
    end

		it "render show tempalte" do
      get :show, id: @stock1
      response.should render_template :show
    end
	end
end
