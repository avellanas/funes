class SplashSplicesController < ApplicationController
  before_action :set_splash_splice, only: [:show, :edit, :update, :destroy]

  # GET /splash_splices
  # GET /splash_splices.json
  def index
    @splash_splices = SplashSplice.all
  end

  # GET /splash_splices/1
  # GET /splash_splices/1.json
  def show
  end

  # GET /splash_splices/new
  def new
    @splash_splice = SplashSplice.new
  end

  # GET /splash_splices/1/edit
  def edit
  end

  # POST /splash_splices
  # POST /splash_splices.json
  def create
    @splash_splice = SplashSplice.new(splash_splice_params)

    respond_to do |format|
      if @splash_splice.save
        format.html { redirect_to @splash_splice, notice: 'Splash splice was successfully created.' }
        format.json { render :show, status: :created, location: @splash_splice }
      else
        format.html { render :new }
        format.json { render json: @splash_splice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /splash_splices/1
  # PATCH/PUT /splash_splices/1.json
  def update
    respond_to do |format|
      if @splash_splice.update(splash_splice_params)
        format.html { redirect_to @splash_splice, notice: 'Splash splice was successfully updated.' }
        format.json { render :show, status: :ok, location: @splash_splice }
      else
        format.html { render :edit }
        format.json { render json: @splash_splice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splash_splices/1
  # DELETE /splash_splices/1.json
  def destroy
    @splash_splice.destroy
    respond_to do |format|
      format.html { redirect_to splash_splices_url, notice: 'Splash splice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_splash_splice
      @splash_splice = SplashSplice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def splash_splice_params
      params.require(:splash_splice).permit(:id, :art_id, :order, :path, :text)
    end
end
