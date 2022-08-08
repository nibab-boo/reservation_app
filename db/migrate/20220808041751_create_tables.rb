class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :tables do |t|
      t.integer :total_seats
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
