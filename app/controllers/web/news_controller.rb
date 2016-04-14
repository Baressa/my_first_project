class Web::NewsController < WebController

  def index
    @news = New.page params[:page]
  end

  def show
    @new = New.friendly.find(params[:id])
  end

end
