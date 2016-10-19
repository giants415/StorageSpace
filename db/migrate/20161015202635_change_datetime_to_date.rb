class ChangeDatetimeToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :transactions, :start_date, :date
    change_column :transactions, :end_date, :date
  end
end
