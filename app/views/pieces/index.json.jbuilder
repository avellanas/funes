json.array!(@pieces) do |piece|
  json.extract! piece, :id, :issue_num, :page, :type_id, :title, :subtitle, :exlibris, :text, :footer, :css, :parent_id, :child_order
  json.url piece_url(piece, format: :json)
end
