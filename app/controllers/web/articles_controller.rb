class Web::ArticlesController < Web::ApplicationController

  def index
    @articles = Article.page params[:page]
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

end
