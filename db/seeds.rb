election_list = [
  [ "Canada", 2015],
  [ "Toronto", 2015],
]

sample_questions = [
  "Would you change the current taxation system? If so how?",
  "Would you change the current policy approach? IF so how?",
]

election_list.each do |name, year|
  election = Election.where( name: name, year: year ).first_or_create!

  sample_questions.each do |question|
    Question.where(content: question, election_id: election.id).first_or_create!
  end
end


