class Candidate < ApplicationRecord
  has_many :primary_results
  belongs_to :party
  validates :name, presence: true, uniqueness: true

  def total_votes_by_state(state)
    primary_results.joins(county: :state).where("states.name = ?", state.name).sum(:votes)
  end
end
