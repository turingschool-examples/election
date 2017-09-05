class PrimaryResult < ApplicationRecord
  belongs_to :candidate
  belongs_to :county
  validates :votes, presence: true

end
