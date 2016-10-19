class RemoveAuthStatus < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :AuthStatus, :boolean
    add_column :users, :AuthStatus, :boolean, default: false
  end
end
