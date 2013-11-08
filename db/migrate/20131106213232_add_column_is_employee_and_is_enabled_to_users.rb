class AddColumnIsEmployeeAndIsEnabledToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_employee, :boolean
    add_column :users, :is_enabled, :boolean
  end
end
