require 'test_helper'

class ElectionsControllerTest < ActionController::TestCase
  def election
    @election ||= elections(:canada)
  end

  test "#index is successful" do
    get :index
    assert_response :success
  end

  test "#show is successful" do
    get :show, id: election.slug
    assert_response :success
  end

  test "#show is not successful when election does not exist" do
    assert_raise ActionView::Template::Error do
      get :show, id: "does not exist"
    end
  end
end
