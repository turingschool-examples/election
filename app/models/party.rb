class Party < ApplicationRecord
  has_many :primary_results
  has_many :candidates

  validates :name, presence: true, uniqueness: true
end
