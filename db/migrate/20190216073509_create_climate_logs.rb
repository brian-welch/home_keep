class CreateClimateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table   :climate_logs do |t|
      t.decimal    :outside_temp
      t.decimal    :outside_humidity
      t.decimal    :room_temp
      t.decimal    :room_humidity
      t.references :building, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
