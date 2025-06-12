class CreateTrainDetails < ActiveRecord::Migration[8.0]
  def change
    create_table :train_details do |t|
      t.string :train_name
      t.string :train_number
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
