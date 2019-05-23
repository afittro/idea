json.set! :data do
  json.array! @ev_cases do |ev_case|
    json.partial! 'ev_cases/ev_case', ev_case: ev_case
    json.url  "
              #{link_to 'Show', ev_case }
              #{link_to 'Edit', edit_ev_case_path(ev_case)}
              #{link_to 'Destroy', ev_case, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end