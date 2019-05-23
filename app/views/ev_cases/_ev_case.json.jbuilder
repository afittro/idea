json.extract! ev_case, :id, :verification_id, :first_name, :last_name, :middle_name, :cit_status, :born_on, :ssn, :hired_on, :wae_on, :opened_on, :closed_on, :case_num, :result, :overdue_reason, :overdue_reason_detail, :created_at, :updated_at
json.url ev_case_url(ev_case, format: :json)
