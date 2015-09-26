require 'test_helper'

class ElectionsControllerTest < ActionController::TestCase
  def election
    @election ||= elections(:canada)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: election.slug
    assert_response :success
  end
end
