class AuthorPiecesController < ApplicationController
  before_action :set_author_piece, only: [:show, :edit, :update, :destroy]

  # GET /author_pieces
  # GET /author_pieces.json
  def index
    @author_pieces = AuthorPiece.all
  end

  # GET /author_pieces/1
  # GET /author_pieces/1.json
  def show
  end

  # GET /author_pieces/new
  def new
    @author_piece = AuthorPiece.new
  end

  # GET /author_pieces/1/edit
  def edit
  end

  # POST /author_pieces
  # POST /author_pieces.json
  def create
    @author_piece = AuthorPiece.new(author_piece_params)

    respond_to do |format|
      if @author_piece.save
        format.html { redirect_to @author_piece, notice: 'Author piece was successfully created.' }
        format.json { render :show, status: :created, location: @author_piece }
      else
        format.html { render :new }
        format.json { render json: @author_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_pieces/1
  # PATCH/PUT /author_pieces/1.json
  def update
    respond_to do |format|
      if @author_piece.update(author_piece_params)
        format.html { redirect_to @author_piece, notice: 'Author piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @author_piece }
      else
        format.html { render :edit }
        format.json { render json: @author_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_pieces/1
  # DELETE /author_pieces/1.json
  def destroy
    @author_piece.destroy
    respond_to do |format|
      format.html { redirect_to author_pieces_url, notice: 'Author piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_piece
      @author_piece = AuthorPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_piece_params
      params.require(:author_piece).permit(:au_id, :piece_id, :role)
    end
end
