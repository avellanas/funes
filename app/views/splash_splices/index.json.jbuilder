json.array!(@splash_splices) do |splash_splice|
  json.extract! splash_splice, :id, :id, :art_id, :order, :path, :text
  json.url splash_splice_url(splash_splice, format: :json)
end
