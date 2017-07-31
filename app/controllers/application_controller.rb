class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user
  include SessionsHelper


  def authenticate_user
    return if current_user
    redirect_to login_path
  end
end
