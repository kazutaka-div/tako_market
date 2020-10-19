class ItemsController < ApplicationController
  
  def index
    @items = Item.last(4)
  end

  def new
    
    @item = Item.new
    3.times do
      @item.images.new
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save!
      redirect_to root_path 
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :status,:prefecture_id, images_attributes: [:src])
  end
end
