class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.integer :wo_nbr
      t.text :description
      t.string :employee
      t.string :customer
      t.decimal :hours
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps null: false
    end
  end
end
