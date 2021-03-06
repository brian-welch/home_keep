class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :sqm
      t.boolean :outside_air_access
      t.decimal :humidity, :precision => 5, :scale => 2
      t.decimal :temp, :precision => 5, :scale => 2
      t.references :building, foreign_key: true
      t.references :ventilation_type, foreign_key: true

      t.timestamps
    end
  end
end
