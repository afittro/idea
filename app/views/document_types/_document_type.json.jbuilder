json.extract! document_type, :id, :code, :name, :abbr, :active, :ev, :rcpt, :created_at, :updated_at
json.url document_type_url(document_type, format: :json)
