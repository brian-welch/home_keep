class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile_number, :string
    add_column :users, :job_title, :string
    add_reference :users, :user_role, index: true
    add_foreign_key :users, :user_roles
  end
end
