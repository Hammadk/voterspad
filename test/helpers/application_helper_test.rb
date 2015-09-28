require "test_helper"

class ApplicationHelperTest < ActiveSupport::TestCase
  class HelperClass
    include ApplicationHelper
  end

  def helper
    @helper ||= HelperClass.new
  end

  test "candidates_response_to_question returns default answer when no answer found" do
    question = stub(answers: [])
    candidate = stub(id: 123)
    assert_equal Answer::DEFAULT_ANSWER, helper.candidates_response_to_question(question, candidate)
  end

  test "candidates_response_to_question returns the candidates response to a question" do
    candidate = stub(id: 123)
    question = stub(answers: [stub(content: "Expected content", candidate_id: candidate.id)])
    assert_equal "Expected content", helper.candidates_response_to_question(question, candidate)
  end
end
