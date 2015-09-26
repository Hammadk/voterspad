require 'test_helper'

class ElectionTest < ActiveSupport::TestCase

  def election
    @election ||= elections(:canada)
  end

  test "Election must have a name" do
    election.name = nil
    refute election.valid?
  end

  test "Election must have a year" do
    election.year = nil
    refute election.valid?
  end

  test "#to_param returns the election's name" do
    assert_equal election.name, election.to_param
  end
end
