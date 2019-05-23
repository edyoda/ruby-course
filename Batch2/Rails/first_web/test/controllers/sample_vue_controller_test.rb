require 'test_helper'

class SampleVueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sample_vue_index_url
    assert_response :success
  end

  test "should get new" do
    get sample_vue_new_url
    assert_response :success
  end

end
