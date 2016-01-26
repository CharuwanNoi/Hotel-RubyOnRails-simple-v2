class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name_employ
      t.references :reservation, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
