class Location < ActiveRecord::Base
  validates :name, presence: true
  validates :year, presence: true

  def to_param
    name
  end
end
