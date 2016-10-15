class AddsUseridToTransaction < ActiveRecord::Migration[5.0]
  def change
    rename_column :transactions, :renter_id, :user_id
  end
end
