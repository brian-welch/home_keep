class CreateVentilationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ventilation_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
