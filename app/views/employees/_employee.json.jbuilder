json.extract! employee, :id, :first_name, :last_name, :middle_name, :ssn, :born_on, :hired_on, :client_id, :co_profile, :other_name, :title, :email, :batch, :created_at, :updated_at
json.url employee_url(employee, format: :json)
