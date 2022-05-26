  class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]
  def index
    @items=Item.all
  end

  
  def show
    # binding.pry
     @item = Item.find(params[:id])
     @tags = @item.tags    
      # render   json: @item


  end

  def new
    @item = Item.new
  end

  
  def edit
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        #  render json: @item, status: :created
        format.html { redirect_to items_url(@item), notice: "item was successfully created." }
    
      else
        format.html { render :new }
      end
    end
  end

  def update
    # binding.pry
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to items_url(@item), notice: "item was successfully updated." }
        
        
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  
    
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url, notice: "item was successfully destroyed." }
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

      def item_params
      params.require(:item).permit(:name, :description, :image, :example)
    end
end

