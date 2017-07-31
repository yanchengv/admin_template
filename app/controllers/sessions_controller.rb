class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user,only: [:new,:create]
  layout 'not_login/application'

  def new
  end

  #登录
  def create
    admin = Admin.find_by(phone: params[:phone])
    if admin && admin.authenticate(params[:password])
      log_in admin
      redirect_to root_url and return
    end
    flash[:danger] = '用户名或密码错误'
    redirect_to login_path and return
  end


  #退出
  def logout
     log_out
    redirect_to '/login'
  end
end
