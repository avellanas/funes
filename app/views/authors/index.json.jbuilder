json.array!(@authors) do |author|
  json.extract! author, :id, :name_first, :name_mid, :name_last, :bio
  json.url author_url(author, format: :json)
end
