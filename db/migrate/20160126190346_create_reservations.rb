class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :roomRes
      t.string :time
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
