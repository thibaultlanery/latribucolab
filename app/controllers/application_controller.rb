class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  #This method gives us details about our user
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      false
    end
  end

end
