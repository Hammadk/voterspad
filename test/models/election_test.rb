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

  test "Election slug must be unique" do
    new_election = Election.new(name: "New country", year: 2015, slug: election.slug)
    refute new_election.valid?
  end

  test "Election's, when not specified, is set to the name and year of the election" do
    new_election = Election.new(name: "New country", year: 2015)
    new_election.valid?
    assert_equal new_election.slug, "#{new_election.name}-#{new_election.year}".parameterize
  end

  test "#to_param returns the election's slug" do
    assert_equal election.slug, election.to_param
  end
end
