class Candidate < ApplicationRecord
  has_many :primary_results
  belongs_to :party
  validates :name, presence: true, uniqueness: true

  def party_name
    party.name
  end

  def total_votes
    primary_results.total
  end
end
