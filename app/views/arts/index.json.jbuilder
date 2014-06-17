json.array!(@arts) do |art|
  json.extract! art, :id, :issue, :title, :info, :is_splash, :is_footer, :type, :au_id, :width
  json.url art_url(art, format: :json)
end
