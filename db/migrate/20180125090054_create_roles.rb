class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name, comment: '角色名称'
      t.integer :status, default: 0, comment: '状态 0:正常,1:禁用'
      t.string :remark,comment: '备用'

      t.timestamps
    end
  end
end
