class Election < ActiveRecord::Base
  validates :name, presence: true
  validates :year, presence: true
  validates :slug, presence: true, uniqueness: true

  before_validation :generate_slug

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug ||= "#{name}-#{year}".parameterize
  end
end
