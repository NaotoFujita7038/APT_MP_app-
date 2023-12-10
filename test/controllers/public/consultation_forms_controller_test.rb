require "test_helper"

class Public::ConsultationFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_consultation_forms_new_url
    assert_response :success
  end

  test "should get confirm" do
    get public_consultation_forms_confirm_url
    assert_response :success
  end
end
