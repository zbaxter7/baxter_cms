class AddEmployeeIdToWorkOrders < ActiveRecord::Migration
  def change
    add_reference :work_orders, :employee, index: true, foreign_key: true
    add_foreign_key :work_orders, :employees
  end
end
