class PhoneController < ApplicationController
  def index
    @phones =Pbook.all
  end
  
  def newphone
    @pbook = Pbook.new
  end
  
  def create
    
    ActionController::Parameters.permit_all_parameters = true
    @pbook = Pbook.new(params[:pbook])
    @pbook.save
    redirect_to  :action => "index"
  end
  
end
