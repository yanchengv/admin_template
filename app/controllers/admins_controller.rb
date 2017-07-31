class AdminsController < ApplicationController
  before_action :side_menus2
  def index
    @bread_menu = {m1: '主页',m2: '管理员列表',m2_url: '/admins',m3: '管理员列表'}
  end


end
