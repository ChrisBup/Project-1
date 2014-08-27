class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_curator, :demo_curator

  def current_curator
    Curator.find(session[:curator_id]) if session[:curator_id]
  end

  def demo_curator
    Curator.find_by_username('AutoLoginDemo')
  end

  def authorize
    redirect_to root_path if current_curator.nil?
  end

end
