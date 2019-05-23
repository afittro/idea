json.set! :data do
  json.array! @revisions do |revision|
    json.partial! 'revisions/revision', revision: revision
    json.url  "
              #{link_to 'Show', revision }
              #{link_to 'Edit', edit_revision_path(revision)}
              #{link_to 'Destroy', revision, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end