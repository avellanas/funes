class AuthorPiece < ActiveRecord::Base
  self.table_name = "author_piece"
  self.primary_key = :au_id, :piece_id
end
