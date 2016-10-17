class AddSeperatedAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :street_address, :string
    add_column :spaces, :city, :string
    add_column :spaces, :state, :string
    add_column :spaces, :zip_code, :string
  end
end
