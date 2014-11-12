class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def newitem
    @item = Item.new
  end
  
  
  def create
    ActionController::Parameters.permit_all_parameters = true
    params[:item][:username] = User.find_by(id: current_user)._id
    @item = Item.new(params[:item])

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
  # def create
#     
    # ActionController::Parameters.permit_all_parameters = true
    # @item = Item.new(params[:item])
        # if @item.save
      # redirect_to  home_welcome_path
    # else
      # redirect_to  :action => "newItem"
    # end
  # end
  
  def modify
    @item = Item.find(params[:id])
  end
  
  def update
    ActionController::Parameters.permit_all_parameters = true
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])
       
    
      redirect_to items_index_path
    
       
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def remove
    Item.find(params[:id]).delete
    redirect_to items_index_path
  end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      #params.require(:item).permit(:title)
      ActionController::Parameters.permit_all_parameters = true

    end
  
end