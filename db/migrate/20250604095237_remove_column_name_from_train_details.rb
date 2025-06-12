class RemoveColumnNameFromTrainDetails < ActiveRecord::Migration[8.0]
  def change
    remove_column :train_details, :from, :string
    remove_column :train_details, :to, :string
  end
end
