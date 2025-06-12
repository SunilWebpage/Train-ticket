class CreateTrains < ActiveRecord::Migration[8.0]
  def change
    create_table :trains do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :gender
      t.integer :age
      t.date :date
      t.references :train_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
