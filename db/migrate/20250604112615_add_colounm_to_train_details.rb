class AddColounmToTrainDetails < ActiveRecord::Migration[8.0]
  def change
    add_column :train_details, :From, :string
    add_column :train_details, :To, :string
  end
end
