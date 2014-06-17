json.array!(@announces) do |announce|
  json.extract! announce, :id, :title, :text, :popup, :window_height, :window_width, :expiration
  json.url announce_url(announce, format: :json)
end
