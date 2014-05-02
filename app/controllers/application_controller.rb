class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  def current_official
    @current_official ||= Official.find_by(id: session[:official_id]) if session[:official_id].present?
  end
  helper_method :current_official

  def require_authentication
    if current_official
      true
    else
      redirect_to new_session_path
    end
  end
end
