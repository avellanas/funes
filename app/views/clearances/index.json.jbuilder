json.array!(@clearances) do |clearance|
  json.extract! clearance, :id, :name
  json.url clearance_url(clearance, format: :json)
end
