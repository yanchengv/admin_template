module SessionsHelper

  # 登入指定的用户
  def log_in(admin)
    session[:admin_id] = admin.id
  end

  def current_user
    @current_user ||= Admin.find(session[:admin_id])
  end

  # 如果用户已登录，返回 true，否则返回 false
  def logged_in?
    !current_user.nil?
  end

  # 退出当前用户
  def log_out
    session.delete(:admin_id)
    @current_user = nil
  end

end
