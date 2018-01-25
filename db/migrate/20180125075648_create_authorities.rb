class CreateAuthorities < ActiveRecord::Migration[5.0]
  def change
    create_table :authorities do |t|
      t.string :name, comment: '权限名称'
      t.string :route_name, comment: '路由，controller#action;例如users#create' #params[:controller]#params[:action]
      t.timestamps
    end
  end
end
