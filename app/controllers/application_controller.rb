class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url, status: :see_other
    end
  end
end
