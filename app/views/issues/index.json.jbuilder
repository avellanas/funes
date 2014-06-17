json.array!(@issues) do |issue|
  json.extract! issue, :id, :date, :color-scheme-id
  json.url issue_url(issue, format: :json)
end
