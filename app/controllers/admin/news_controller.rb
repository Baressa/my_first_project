class Admin::NewsController < Admin::ApplicationController

  def index
    @news = New.page params[:page]
  end

  def new
    @new = New.new
  end

  def create
    @new = New.new(new_params)

    @new.save!
    redirect_to action: 'index'
  end

  def edit
    @new = New.friendly.find(params[:id])
  end

  def update
    @new = New.friendly.find(params[:id])

    if @new.update(new_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  private
    def new_params
      params.require(:new).permit(:title, :text, :url, :image, :image_thumb)
    end

end
