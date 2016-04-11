class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.friendly.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save!
		redirect_to @article
	end

	private
		def article_params
			params.require(:article).permit(:title, :text, :image, :image_thumb)
		end

end
