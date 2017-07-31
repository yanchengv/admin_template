module Menus
  module SideMenus
    def self.list
      m1 = side_menus1 #用户管理
      m2 = side_menus2 #系统管理
      all_side_menus = {}
      all_side_menus = all_side_menus.merge(m1).merge(m2)
    end


    #夺宝商城菜单列表
    def self.side_menus1
      side_menus = {
          menu1: [
              {
                  grandfather: '用户管理',
                  parent: '主页',
              },
              {
                  grandfather: '用户管理',
                  parent: '商家管理',
                  children: [
                      {
                          name: '商家列表',
                          url: '#'

                      },
                      {
                          name: '商家信息',
                          url: '#'

                      }

                  ]

              },
              {
                  grandfather: '用户管理',
                  parent: '客户管理',
                  children: [
                      {
                          name: '客户列表',
                          url: '/admins'

                      },
                      {
                          name: '客户信息',
                          url: '#'

                      },

                      {
                          name: '新加客户',
                          url: '#'

                      }
                  ]

              }
          ]
      }
    end


    #卡牌商城菜单列表
    def self.side_menus2
      side_menus = {
          menu2: [
              {
                  grandfather: '系统管理',
                  parent: '管理员管理',
                  children: [
                      {
                          name: '管理员列表',
                          url: '/admins'

                      }
                  ]
              },
              {
                  grandfather: '系统管理',
                  parent: '权限管理',
                  children: [
                      {
                          name: '角色列表',
                          url: '/roles'
                      },
                      {
                          name: '资源管理',
                          url: '#'
                      }
                  ]
              },

          ]
      }
    end


  end
end
