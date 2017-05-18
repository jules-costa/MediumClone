class ApplicationController < ActionController::Base
  #TODO comment this back in!
  # protect_from_forgery with: :exception

  helper_method :current_user, :logged_in

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in
    !!current_user
  end

  def login(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end


  def logout
    @current_user.reset_session_token!
    session[:session_token] = nil
  end
end
