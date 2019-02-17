class CreateBuildingType < ActiveRecord::Migration[5.2]
  def change
    create_table :building_types do |t|
      t.string :name
    end
  end
end
