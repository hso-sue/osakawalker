require 'test_helper'

class EvaluationCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get evaluation_comments_index_url
    assert_response :success
  end

end
