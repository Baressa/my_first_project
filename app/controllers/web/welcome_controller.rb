class Web::WelcomeController < Web::ApplicationController
  def index
    @articles = Article.page params[:page]
  end
end
