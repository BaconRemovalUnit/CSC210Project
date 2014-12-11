class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.where(params[:id])
  end
  
  def create
    
    ActionController::Parameters.permit_all_parameters = true
    @user = User.new(params[:user])
    if @user.save
      redirect_to  home_welcome_path
    else
      redirect_to  :action => "new"
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    ActionController::Parameters.permit_all_parameters = true
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    if current_user
      redirect_to home_welcome_path
    else
      redirect_to :action => "index"
    end
       
  end
  
  def destroy
    User.find(params[:id]).delete
    redirect_to home_welcome_path
  end
  
  def profile
    @user= User.find(params[:id])
    @salesItems = Item.search(@user._id, "Search by user name")
    @commentdummy = Comment.where(user: params[:id])
    idArray = []
    @commentdummy.each do |p|
      idArray.push p.item
    end
    @interestedItems = Item.find(idArray)
    @comments = Comment.all
  end
  
  def setting
    @user = current_user
     
  end
  
end