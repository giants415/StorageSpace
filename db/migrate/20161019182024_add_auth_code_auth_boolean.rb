class AddAuthCodeAuthBoolean < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :AuthCode, :string
    add_column :users, :AuthStatus, :boolean
  end
end
