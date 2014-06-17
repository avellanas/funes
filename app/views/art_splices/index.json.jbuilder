json.array!(@art_splices) do |art_splice|
  json.extract! art_splice, :id, :art_id, :order, :path, :text
  json.url art_splice_url(art_splice, format: :json)
end
