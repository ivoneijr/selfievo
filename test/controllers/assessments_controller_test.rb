require 'test_helper'

class AssessmentsControllerTest < ActionController::TestCase
  setup do
    @assessment = assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessment" do
    assert_difference('Assessment.count') do
      post :create, assessment: { abs: @assessment.abs, axilar: @assessment.axilar, bmi: @assessment.bmi, bodyfat: @assessment.bodyfat, chest: @assessment.chest, coach_id: @assessment.coach_id, gym_id: @assessment.gym_id, height: @assessment.height, pupil_id: @assessment.pupil_id, subscapularis: @assessment.subscapularis, supra: @assessment.supra, thigh: @assessment.thigh, triceps: @assessment.triceps, weight: @assessment.weight }
    end

    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should show assessment" do
    get :show, id: @assessment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessment
    assert_response :success
  end

  test "should update assessment" do
    patch :update, id: @assessment, assessment: { abs: @assessment.abs, axilar: @assessment.axilar, bmi: @assessment.bmi, bodyfat: @assessment.bodyfat, chest: @assessment.chest, coach_id: @assessment.coach_id, gym_id: @assessment.gym_id, height: @assessment.height, pupil_id: @assessment.pupil_id, subscapularis: @assessment.subscapularis, supra: @assessment.supra, thigh: @assessment.thigh, triceps: @assessment.triceps, weight: @assessment.weight }
    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should destroy assessment" do
    assert_difference('Assessment.count', -1) do
      delete :destroy, id: @assessment
    end

    assert_redirected_to assessments_path
  end
end
