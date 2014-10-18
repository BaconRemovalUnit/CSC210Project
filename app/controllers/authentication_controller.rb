class AuthenticationController < ApplicationController
  
  def login
  #Login Form
    
  end
  

  def new
  end

  def create
    user = User.find_by(_id: params[:authentication][:userid])
    if user && params[:authentication][:password] == user.password
      redirect_to users_index_path
      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to home_welcome_path
     end
  end

  def destroy
  end
  
  
end
