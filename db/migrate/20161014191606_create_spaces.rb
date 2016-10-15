class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.integer :user_id
      t.string :title
      t.integer :price
      t.string :address
      t.integer :size
      t.boolean :available
      t.string :photo
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
