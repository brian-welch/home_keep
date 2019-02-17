class CreateUserRole < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      t.string :name
    end
  end
end
