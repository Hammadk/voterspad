class Candidate < ActiveRecord::Base
  has_many :answers
  has_many :election_candidates
  has_many :elections, through: :election_candidates
end
