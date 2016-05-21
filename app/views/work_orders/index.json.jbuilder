json.array!(@work_orders) do |work_order|
  json.extract! work_order, :id, :wo_nbr, :description, :employee, :customer, :hours, :start_date, :end_date, :notes
  json.url work_order_url(work_order, format: :json)
end
