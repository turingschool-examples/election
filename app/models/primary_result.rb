class PrimaryResult < ApplicationRecord
  belongs_to :candidate
  belongs_to :county
  validates :votes, presence: true

  def self.total
    sum(:votes)
  end

  def state_name
    county.state_name
  end
end
