election_list = [
  [ "Canada", 2015],
  [ "Toronto", 2015],
]

election_list.each do |name, year|
  Election.where( name: name, year: year ).first_or_create!
end
