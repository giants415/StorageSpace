class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :stripe_id
      t.integer :renter_id
      t.integer :space_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
