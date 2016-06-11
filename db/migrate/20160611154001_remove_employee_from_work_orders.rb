class RemoveEmployeeFromWorkOrders < ActiveRecord::Migration
  def change
    remove_column :work_orders, :employee, :string
  end
end
