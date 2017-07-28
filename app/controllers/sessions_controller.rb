class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout 'not_login/application'

  def new
  end

  #登录
  def create
    admin = Admin.find_by(phone: params[:phone])
    if admin && admin.authenticate(params[:password])
      log_in admin
      redirect_to root_url
    end
    flash[:danger] = '用户名或密码错误'
    redirect_to '/login'
  end


  #退出
  def destroy
     log_out
    redirect_to root_url
  end
end
