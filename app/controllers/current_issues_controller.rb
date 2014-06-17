class CurrentIssuesController < ApplicationController
  before_action :set_current_issue, only: [:show, :edit, :update, :destroy]

  # GET /current_issues
  # GET /current_issues.json
  def index
    @current_issues = CurrentIssue.all
  end

  # GET /current_issues/1
  # GET /current_issues/1.json
  def show
  end

  # GET /current_issues/new
  def new
    @current_issue = CurrentIssue.new
  end

  # GET /current_issues/1/edit
  def edit
  end

  # POST /current_issues
  # POST /current_issues.json
  def create
    @current_issue = CurrentIssue.new(current_issue_params)

    respond_to do |format|
      if @current_issue.save
        format.html { redirect_to @current_issue, notice: 'Current issue was successfully created.' }
        format.json { render :show, status: :created, location: @current_issue }
      else
        format.html { render :new }
        format.json { render json: @current_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_issues/1
  # PATCH/PUT /current_issues/1.json
  def update
    respond_to do |format|
      if @current_issue.update(current_issue_params)
        format.html { redirect_to @current_issue, notice: 'Current issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_issue }
      else
        format.html { render :edit }
        format.json { render json: @current_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_issues/1
  # DELETE /current_issues/1.json
  def destroy
    @current_issue.destroy
    respond_to do |format|
      format.html { redirect_to current_issues_url, notice: 'Current issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_issue
      @current_issue = CurrentIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_issue_params
      params.require(:current_issue).permit(:number)
    end
end
