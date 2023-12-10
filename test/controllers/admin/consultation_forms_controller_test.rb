require "test_helper"

class Admin::ConsultationFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_consultation_forms_new_url
    assert_response :success
  end

  test "should get confirm" do
    get admin_consultation_forms_confirm_url
    assert_response :success
  end
end
