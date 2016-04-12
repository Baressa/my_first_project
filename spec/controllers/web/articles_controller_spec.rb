require 'rails_helper'

RSpec.describe Web::ArticlesController, type: :controller do

	describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
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
		before { @article1 = create(:article) }

		it "rassigns the requested video to the @article" do
      get :show, id: @article1.title
      assigns(:article).should == @article1
    end

		it "render show tempalte" do
      get :show, id: @article1
      response.should render_template :show
    end
	end

	# describe "GET #new" do
  #   it "responds successfully with an HTTP 200 status code" do
  #     get :new
	# 		response.should be_success
  #     response.should have_http_status(200)
	# 		expect(assigns(:article)).to be_a_new(Article)
  #   end
	#
	# 	it "add new article" do
  #     get :new
	# 		expect(assigns(:article)).to be_a_new(Article)
  #   end
	# end
	#
	# describe "#create" do
	#
	# 	before(:each) do
	#
  #     @article = build(:article)
  #     @article.save
	#
  #     @article_attributes = attributes_for(:article)
  #   end
	#
	# 	it "should create a new article" do
	# 		expect {
  #       post :create, :article => @article_attributes
  #     }.to change(Article, :count).by(1)
  #   end
	#
	# 	it "should create a new article, redirect to the article" do
  #     post :create, :article => @article_attributes
  #     response.should redirect_to([:web, @article])
  #   end
  # end



end
