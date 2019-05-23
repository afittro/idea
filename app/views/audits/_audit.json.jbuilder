json.extract! audit, :id, :verification_id, :mistake_id, :issue, :responsible, :integer, :recorded_on, :auditor, :created_at, :updated_at
json.url audit_url(audit, format: :json)
