class AddTrainDetailIdToTrains < ActiveRecord::Migration[8.0]
  def change
    add_column :trains, :train_detail_id, :integer
  end
end
