json.extract! employee_table, :id, :name, :email, :address, :created_at, :updated_at
json.url employee_table_url(employee_table, format: :json)
