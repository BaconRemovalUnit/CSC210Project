class AccountController < ApplicationController
  def index
    @accounts = Accountl.all
  end
  
  def newaccount
    @accountl = Accountl.new
  end
  
  def create
    
    ActionController::Parameters.permit_all_parameters = true
    @accountl = Accountl.new(params[:accountl])
    @accountl.save
    redirect_to  :action => "index"
  end
  
  def modify
    
  end
end
