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
    if @user.save
      redirect_to  :action => "index"
    else
      redirect_to  :action => "newuser"
    end
  end
  
  def modify
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    if current_user
      redirect_to home_welcome_path
    else
      redirect_to :action => "index"
    end
       
  end
  
  def remove
    User.find(params[:id]).delete
    redirect_to home_welcome_path
  end
  
end