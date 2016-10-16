class DefaultAvailableToTrue < ActiveRecord::Migration[5.0]
  def change
    change_column :spaces, :available, :boolean, default: true
  end
end
