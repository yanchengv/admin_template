class AuthoritiesController < ApplicationController
  before_action :side_menus2

  def index
    @bread_menu = {m1: '系统管理', m2: '权限管理', m2_url: '/authority', m3: '权限列表',add: '/authorities/new'}
    @authority = Authority.all.page(params[:page]).per(20)
  end


  def new
    @bread_menu = {m1: '系统管理', m2: '权限管理', m2_url: '/authority', m3: '权限添加'}
    @authority = Authority.new
  end

  def create
    Authority.create(authority_params)
    redirect_to authorities_path
  end

  private

  def set_manage_authority
    @authority = Authority.find(params[:id])
  end

  def authority_params
    params.require(:authority).permit!
  end
end
