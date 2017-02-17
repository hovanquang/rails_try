class SessionsController < ApplicationController
  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
            # remember user
            params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		redirect_to user
  	else
  		flash.now[:danger] = 'Tai khoan hoac mat khau khong hop'	
  		render 'new'
  	end
  end
  def destroy
    if logged_in?
      log_out 
    end
  	redirect_to login_path
  end
end
