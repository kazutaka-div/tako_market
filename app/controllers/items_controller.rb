class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update]
  
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

  def edit
    @item = Item.find(params[:id])
    
  end

  def update
    if @item.update(item_params)
      redirect_to root_path, notice:"編集に成功したよ"
    else
      render :edit
    end
  end


  private
  def item_params
    params.require(:item).permit(:name, :price, :status,:prefecture_id, images_attributes: [:src])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
