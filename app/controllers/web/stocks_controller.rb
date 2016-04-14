class Web::StocksController < Web::ApplicationController

  def index
    @stocks = Stock.page params[:page]
  end

  def show
    @stock = Stock.friendly.find(params[:id])
  end

end
