# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180125075648) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username",                                 comment: "昵称，用户名"
    t.string   "phone",                                    comment: "手机号"
    t.string   "password_digest",                          comment: "密码"
    t.integer  "status",          default: 0,              comment: "用户状态：0：正常,1:禁用"
    t.string   "name",                                     comment: "姓名"
    t.string   "email",                                    comment: "邮箱"
    t.string   "request_ip",                               comment: "最近登陆ip"
    t.datetime "last_login_time",                          comment: "最后登录时间"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "authorities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                    comment: "权限名称"
    t.string   "route_name",              comment: "路由，controller#action;例如users#create"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
