class ArtSplicesController < ApplicationController
  before_action :set_art_splice, only: [:show, :edit, :update, :destroy]

  # GET /art_splices
  # GET /art_splices.json
  def index
    @art_splices = ArtSplice.all
  end

  # GET /art_splices/1
  # GET /art_splices/1.json
  def show
  end

  # GET /art_splices/new
  def new
    @art_splice = ArtSplice.new
  end

  # GET /art_splices/1/edit
  def edit
  end

  # POST /art_splices
  # POST /art_splices.json
  def create
    @art_splice = ArtSplice.new(art_splice_params)

    respond_to do |format|
      if @art_splice.save
        format.html { redirect_to @art_splice, notice: 'Art splice was successfully created.' }
        format.json { render :show, status: :created, location: @art_splice }
      else
        format.html { render :new }
        format.json { render json: @art_splice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_splices/1
  # PATCH/PUT /art_splices/1.json
  def update
    respond_to do |format|
      if @art_splice.update(art_splice_params)
        format.html { redirect_to @art_splice, notice: 'Art splice was successfully updated.' }
        format.json { render :show, status: :ok, location: @art_splice }
      else
        format.html { render :edit }
        format.json { render json: @art_splice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_splices/1
  # DELETE /art_splices/1.json
  def destroy
    @art_splice.destroy
    respond_to do |format|
      format.html { redirect_to art_splices_url, notice: 'Art splice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_splice
      @art_splice = ArtSplice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_splice_params
      params.require(:art_splice).permit(:art_id, :order, :path, :text)
    end
end
