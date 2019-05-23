json.set! :data do
  json.array! @verifications do |verification|
    json.partial! 'verifications/verification', verification: verification
    json.url  "
              #{link_to 'Show', verification }
              #{link_to 'Edit', edit_verification_path(verification)}
              #{link_to 'Destroy', verification, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end