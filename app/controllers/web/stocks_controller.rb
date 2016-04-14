class Web::StocksController < WebController

  def index
    @stocks = Stock.page params[:page]
  end

  def show
    @stock = Stock.friendly.find(params[:id])
  end

end
