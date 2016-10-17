class RemoveAddress < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :address, :string
  end
end
