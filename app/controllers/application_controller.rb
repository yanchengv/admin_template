class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user
  include SessionsHelper


  def authenticate_user
    return if current_user
    redirect_to login_path
  end


  private

  def side_menus1
    #用户管理
    @side_menus = Menus::SideMenus.list[:menu1]
  end

  def side_menus2
    #系统管理
    @side_menus = Menus::SideMenus.list[:menu2]
  end

end
