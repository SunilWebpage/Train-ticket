class AddNewColumnNameToTrainDetails < ActiveRecord::Migration[8.0]
  def change
    add_column :train_details, :from, :string
    add_column :train_details, :to, :string
  end
end
