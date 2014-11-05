class ItemController < ApplicationController
  def index
    @items = Item.all
  end
  
  def newItem
    @item = Item.new
  end
  
  def create
    
    ActionController::Parameters.permit_all_parameters = true
    @item = Item.new(params[:item])
        if @item.save
      redirect_to  home_welcome_path
    else
      redirect_to  :action => "newItem"
    end
  end
  
  def modify
    @item = Item.find(params[:id])
  end
  
  def update
    ActionController::Parameters.permit_all_parameters = true
    @item = item.find(params[:id])
    @item.update_attributes(params[:item])
       
  end
  
  def remove
    Item.find(params[:id]).delete
    redirect_to home_welcome_path
  end
  
end