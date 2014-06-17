json.array!(@author_pieces) do |author_piece|
  json.extract! author_piece, :id, :au_id, :piece_id, :role
  json.url author_piece_url(author_piece, format: :json)
end
