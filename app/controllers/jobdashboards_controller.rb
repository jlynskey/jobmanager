class JobdashboardsController < ApplicationController
  before_action :set_jobdashboard, only: [:show, :edit, :update, :destroy]

  # GET /jobdashboards
  # GET /jobdashboards.json
  def index
    @jobdashboards = Jobdashboard.all
  end

  # GET /jobdashboards/1
  # GET /jobdashboards/1.json
  def show
  end

  # GET /jobdashboards/new
  def new
    @jobdashboard = Jobdashboard.new
  end

  # GET /jobdashboards/1/edit
  def edit
  end

  # POST /jobdashboards
  # POST /jobdashboards.json
  def create
    @jobdashboard = Jobdashboard.new(jobdashboard_params)

    respond_to do |format|
      if @jobdashboard.save
        format.html { redirect_to @jobdashboard, notice: 'Jobdashboard was successfully created.' }
        format.json { render :show, status: :created, location: @jobdashboard }
      else
        format.html { render :new }
        format.json { render json: @jobdashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobdashboards/1
  # PATCH/PUT /jobdashboards/1.json
  def update
    respond_to do |format|
      if @jobdashboard.update(jobdashboard_params)
        format.html { redirect_to @jobdashboard, notice: 'Jobdashboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobdashboard }
      else
        format.html { render :edit }
        format.json { render json: @jobdashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobdashboards/1
  # DELETE /jobdashboards/1.json
  def destroy
    @jobdashboard.destroy
    respond_to do |format|
      format.html { redirect_to jobdashboards_url, notice: 'Jobdashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobdashboard
      @jobdashboard = Jobdashboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobdashboard_params
      params.require(:jobdashboard).permit(:job_id, :job_comment)
    end
end
