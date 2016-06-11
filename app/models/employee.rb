class Employee < ActiveRecord::Base
  has_many :work_orders
  has_many :time_cards
end
