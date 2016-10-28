class CreateSurveysController < ApplicationController
  before_action :set_create_survey, only: [:show, :edit, :update, :destroy]

  # GET /create_surveys
  # GET /create_surveys.json
  def index
    @create_surveys = CreateSurvey.all
  end

  # GET /create_surveys/1
  # GET /create_surveys/1.json
  def show
  end

  # GET /create_surveys/new
  def new
    @create_survey = CreateSurvey.new
  end

  # GET /create_surveys/1/edit
  def edit
  end

  # POST /create_surveys
  # POST /create_surveys.json
  def create
    @create_survey = CreateSurvey.new(create_survey_params)

    respond_to do |format|
      if @create_survey.save
        format.html { redirect_to @create_survey, notice: 'Create survey was successfully created.' }
        format.json { render :show, status: :created, location: @create_survey }
      else
        format.html { render :new }
        format.json { render json: @create_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_surveys/1
  # PATCH/PUT /create_surveys/1.json
  def update
    respond_to do |format|
      if @create_survey.update(create_survey_params)
        format.html { redirect_to @create_survey, notice: 'Create survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_survey }
      else
        format.html { render :edit }
        format.json { render json: @create_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_surveys/1
  # DELETE /create_surveys/1.json
  def destroy
    @create_survey.destroy
    respond_to do |format|
      format.html { redirect_to create_surveys_url, notice: 'Create survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_survey
      @create_survey = CreateSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_survey_params
      params.require(:create_survey).permit(:title, :description, :user_id)
    end
end
