class ChangeTimePerTableToStringInRestaurants < ActiveRecord::Migration[6.1]
  def up
    change_column :restaurants, :time_per_table, :string
  end

  def down
    change_column :restaurants, :time_per_table, :time
  end
end
