class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def newuser
    @user = User.new
  end
  
  def create
    
    ActionController::Parameters.permit_all_parameters = true
    @user = User.new(params[:user])
    @user.save
    redirect_to  :action => "index"
  end
  
  def modifyW
    
  end
end