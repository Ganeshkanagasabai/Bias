  class ItemsController < ApplicationController


  before_action :set_item, only: %i[ show edit update destroy ]
  
  # attr_accessor: count
  def index
   @items = Item.all 
    

  end
  


  def index1
    count=0
    
    
    if count%2==0 
    @it=Item.all
    @items=[]
    @it.each  do |item|
      item.tags.each do |tag|
        
        if tag.color_code =="1" 
           
           @items << item
        end
      end
    end
    @items
    count=count+1
  else
    @items =Item.all
  end
  end  

  def index2
    count=0
    
  
    if count%2==0 
    @it=Item.all
    @items=[]
    @it.each  do |item|
      item.tags.each do |tag|
        
        if tag.color_code =="2" 
          ing.pry 
           @items << item
        end
      end
    end
    @items
    count=count+1
  else
    @items =Item.all
  end
  end  

  def index3
    count=0
    
    if count%2==0 
    @it=Item.all
    @items=[]
    @it.each  do |item|
      item.tags.each do |tag|
        
        if tag.color_code =="3" 
           
           @items << item
        end
      end
    end
    @items
    count=count+1
  else
    @items =Item.all
  
  end  
  end
  def index4
    count=0
    
    
    if count%2==0 
    @it=Item.all
    @items=[]
    @it.each  do |item|
      item.tags.each do |tag|
        
        if tag.color_code =="4" 
           
           @items << item
        end
      end
    end
    @items
    count=count+1
  else
    @items =Item.all
  
  end  
  end

  def index5
    count=0
    
    
    if count%2==0 
    @it=Item.all
    @items=[]
    @it.each  do |item|
      item.tags.each do |tag|
        
        if tag.color_code =="5" 
           
           @items << item
        end
      end
    end
    @items
    count=count+1
  else
    @items =Item.all
  
  end  

  end



  def show
    # 
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

