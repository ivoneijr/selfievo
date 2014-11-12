class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]

  # GET /assessments
  def index
    @assessments = Assessment.all
  end

  # GET /assessments/1
  def show
  end

  # GET /assessments/new
  def new
    @assessment = Assessment.new
  end

  # GET /assessments/1/edit
  def edit
  end

  # POST /assessments
  def create
    @assessment = Assessment.new(assessment_params)

    if @assessment.save
      redirect_to @assessment, notice: 'Assessment was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /assessments/1
  def update
    if @assessment.update(assessment_params)
      redirect_to @assessment, notice: 'Assessment was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /assessments/1
  def destroy
    @assessment.destroy
    redirect_to assessments_url, notice: 'Assessment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @assessment = Assessment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assessment_params
      params.require(:assessment).permit(:subscapularis, :triceps, :chest, :axilar, :supra, :abs, :thigh, :height, :weight, :bmi, :bodyfat, :coach_id, :gym_id, :pupil_id)
    end
end
