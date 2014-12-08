class HomeController < ApplicationController
  layout "nav"
  def welcome
    @items = Item.all
    @item = Item.new
    @comments = Comment.all
  end

  def login
    
  end
  
    def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Thing was successfully created.' }
        format.json { render json: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  def setting
    
  end
end
