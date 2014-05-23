class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def logged_in?
    !!current_user
  end

  private

  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_url
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to courses_url , alert: "You can't access this page"
  end

end
