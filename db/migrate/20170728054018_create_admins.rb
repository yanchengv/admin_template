class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :username, comment: '昵称，用户名'
      t.string :phone, comment: '手机号'
      t.string :encrypted_password, comment: '密码'
      t.string :salt
      t.integer :status, default: 0, comment: '用户状态：0：正常,1:禁用'
      t.string :name, comment: '姓名'
      t.string :email, comment: '邮箱'
      t.string :request_ip, comment: '最近登陆ip'
      t.datetime :last_login_time, comment: '最后登录时间'
      t.timestamps
    end
  end
end
