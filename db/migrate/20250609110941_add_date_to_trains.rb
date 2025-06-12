class AddDateToTrains < ActiveRecord::Migration[8.0]
  def change
    add_column :trains, :date, :date
  end
end
