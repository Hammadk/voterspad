election_list = [
  [ "Canada", 2015],
  [ "Toronto", 2015],
]

sample_questions = [
  "Would you change the current taxation system? If so how?",
  "Would you change the current policy approach? IF so how?",
]

candidate_list = [
  ["Candidate 1", "candidate1.com", "candidate 1 image url", "description of candidate 1"],
  ["Candidate 2", "candidate2.com", "candidate 2 image url", "description of candidate 2"],
  ["Candidate 3", "candidate3.com", "candidate 3 image url", "description of candidate 3"],
]

election_list.each do |name, year|
  election = Election.where( name: name, year: year ).first_or_create!

  candidate_list.each do |name, website, image_url, description|
    candidate = Candidate.where(name: name, website: website, image_url: image_url, description: description).first_or_create!
    existing_election_candidate = election.election_candidates.detect { |ec| ec.candidate_id == candidate.id }.try(:destroy)
    election.candidates << candidate
  end

  sample_questions.each do |question|
    Question.where(content: question, election_id: election.id).first_or_create!
  end
end


