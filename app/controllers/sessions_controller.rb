class SessionsController < ApplicationController
  def new

  end

  def create
  	user=User.find_by(username: params[:session][:username])
  	if user && user.authenticate(params[:session][:password])
  		sign_in user
      
      if user.admin2? 
        redirect_to terminal_path
      else
        redirect_to clienthome_path
      end
  		
  	else
      flash.now[:error] = 'Invalid email/password combination'
  		render 'new'
  	end

  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
