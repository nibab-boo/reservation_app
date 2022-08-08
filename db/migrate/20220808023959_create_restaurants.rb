class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :total_seating
      t.references :user, null: false, foreign_key: true
      t.time :time_per_table

      t.timestamps
    end
  end
end
