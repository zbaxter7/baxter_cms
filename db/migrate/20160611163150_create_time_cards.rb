class CreateTimeCards < ActiveRecord::Migration
  def change
    create_table :time_cards do |t|
      t.date :date
      t.references :employee, index: true, foreign_key: true
      t.time :morning_in
      t.time :morning_out
      t.time :afternoon_in
      t.time :afternoon_out

      t.timestamps null: false
    end
  end
end
