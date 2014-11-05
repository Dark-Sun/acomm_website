
require "browser"

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :check_browser

  def check_browser
  	# redirect_to update_browser_path if browser.ie? && browser.version < '8' && params[:action] != 'update_browser'
  end
end
