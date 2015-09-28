class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :candidate

  DEFAULT_ANSWER = "No answer yet"
end
