class AddRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :integer, default: 0, null: false #デフォルトは0（一般ユーザー）にする。
    add_column :users, :admin, :boolean, default: false
  end
end
