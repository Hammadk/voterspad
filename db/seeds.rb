location_list = [
  [ "Canada", 2015],
]

location_list.each do |name, year|
  Location.where( name: name, year: year ).first_or_create!
end
