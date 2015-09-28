class Question < ActiveRecord::Base
  belongs_to :election
  has_many :answers
end
