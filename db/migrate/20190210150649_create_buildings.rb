class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :city
      t.string :street
      t.string :post_code
      t.string :country
      t.decimal :outside_temp, :precision => 5, :scale => 2
      t.decimal :outside_humidity, :precision => 5, :scale => 2
      t.references :user, foreign_key: true
      t.references :building_type, foreign_key: true

      t.timestamps
    end
  end
end
