require 'rails_helper'

RSpec.describe Admin::NewsController, type: :controller do

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

    it "loads all of the posts into @new" do
      new1, new2 = create(:new), create(:new)
      get :index

      expect(assigns(:news)).to match_array([new1, new2])
    end
  end

  describe "GET #edit" do
    before { @new1 = create(:new) }

    it "rassigns the requested video to the @article" do
      get :edit, id: @new1.url
      assigns(:new).should == @new1
    end

    it "render edit tempalte" do
      get :edit, id: @new1
      response.should render_template :edit
    end
	end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      response.should be_success
      response.should have_http_status(200)
      expect(assigns(:new)).to be_a_new(New)
    end

    it "add new article" do
      get :new
      expect(assigns(:new)).to be_a_new(New)
    end
  end

  describe "#create" do
    before(:each) do
      @new = build(:new)
      @new.save
      @new_attributes = attributes_for(:new)
    end
    it "should create a new news" do
      expect {
        post :create, :new => @new_attributes
      }.to change(New, :count).by(1)
    end
  end

end
