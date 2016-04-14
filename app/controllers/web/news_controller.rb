class Web::NewsController < Web::ApplicationController

  def index
    @news = New.page params[:page]
  end

  def show
    @new = New.friendly.find(params[:id])
  end

end
