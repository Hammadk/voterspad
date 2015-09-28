module ApplicationHelper
  def candidates_response_to_question(question, candidate)
    answer = question.answers.detect { |answer| answer.candidate_id == candidate.id }
    answer.present? ? answer.content : Answer::DEFAULT_ANSWER
  end
end
