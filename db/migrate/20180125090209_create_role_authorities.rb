class CreateRoleAuthorities < ActiveRecord::Migration[5.0]
  def change
    create_table :role_authorities do |t|
      t.integer :role_id, comment: '角色表ID'
      t.integer :authority_id, comment: '权限表ID'

      t.timestamps
    end
  end
end
