class Admin::StocksController < AdminController
  def index
    @stocks = Stock.page params[:page]
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)

    @stock.save!
    redirect_to action: 'index'
  end

  def edit
    @stock = Stock.friendly.find(params[:id])
  end

  def update
    @stock = Stock.friendly.find(params[:id])

    if @v.update(stock_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  private
    def stock_params
      params.require(:stock).permit(:title, :text, :url, :image, :image_thumb)
    end
end
