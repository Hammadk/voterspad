class Election < ActiveRecord::Base
  validates :name, presence: true
  validates :year, presence: true
  validates :slug, presence: true, uniqueness: true

  before_validation :generate_slug

  has_many :questions
  has_many :election_candidates
  has_many :candidates, through: :election_candidates

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug ||= "#{name}-#{year}".parameterize
  end
end
