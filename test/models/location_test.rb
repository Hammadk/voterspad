require 'test_helper'

class LocationTest < ActiveSupport::TestCase

  def location
    @location ||= locations(:canada)
  end

  test "Location must have a name" do
    location.name = nil
    refute location.valid?
  end

  test "Location must have a year" do
    location.year = nil
    refute location.valid?
  end

  test "#to_param returns the location's name" do
    assert_equal location.name, location.to_param
  end
end
