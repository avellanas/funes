json.array!(@current_issues) do |current_issue|
  json.extract! current_issue, :id, :number
  json.url current_issue_url(current_issue, format: :json)
end
