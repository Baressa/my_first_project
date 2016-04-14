require 'rails_helper'

RSpec.describe Admin::StocksController, type: :controller do

  describe "GET #index" do
    it "responds success and 200" do
      get :index
      response.should be_success
      response.should have_http_status(200)
    end

    it "render index template" do
      get :index
      response.should render_template :index
    end

    it "loads all of the posts into @articles" do
      stock1, stock2 = create(:stock), create(:stock)
      get :index

      expect(assigns(:stocks)).to match_array([stock1, stock2])
    end
  end

  describe "GET #edit" do
    before { @stock1 = create(:stock) }

    it "rassigns the requested video to the @article" do
      get :edit, id: @stock1.url
      assigns(:stock).should == @stock1
    end

    it "render edit tempalte" do
      get :edit, id: @stock1
      response.should render_template :edit
    end
	end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      response.should be_success
      response.should have_http_status(200)
      expect(assigns(:stock)).to be_a_new(Stock)
    end

    it "add new article" do
      get :new
      expect(assigns(:stock)).to be_a_new(Stock)
    end
  end

  describe "#create" do
    before(:each) do
      @stock = build(:stock)
      @stock.save
      @stock_attributes = attributes_for(:stock)
    end
    it "should create a new article" do
      expect {
        post :create, :new => @stock_attributes
      }.to change(Stock, :count).by(1)
    end
  end

end
