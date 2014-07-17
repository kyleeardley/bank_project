module SessionsHelper

		#invoked on the sessions create action
  def sign_in(user)
  		#stores the new remember token created in model into local var
    remember_token = User.new_remember_token
    	#puts that token into cookies hash
    cookies.permanent[:remember_token] = remember_token
    	#updates remember token in database for the user
    user.update_attribute(:remember_token, User.digest(remember_token))
    	#invokes current_user method below
    self.current_user = user
  end

  def signed_in?
  		#calls current user method and checks to see if it is truthy
    !current_user.nil?
  end

  def current_user=(user)
  	@current_user=user
  end

  def current_user
  		#looks up current users remember token in the cookie hash and returns to local var
    remember_token = User.digest(cookies[:remember_token])
    	#if @current_user is already defined show else find them with remember token
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def current_user?(user)
    user == current_user
  end

  def sign_out
  		#Updates remember token in case it was stolen
    current_user.update_attribute(:remember_token, User.digest(User.new_remember_token))
    	#Deletes the remember token in the cookies hash
    cookies.delete(:remember_token)
    	#sets current user to nil ending the session
    self.current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end

end
