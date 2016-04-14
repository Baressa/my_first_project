class Admin::ArticlesController < AdminController

  def index
    @articles = Article.page params[:page]
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    @article.save!
    redirect_to action: 'index'
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])

    if @article.update(article_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :text, :url, :image, :image_thumb)
    end

end
