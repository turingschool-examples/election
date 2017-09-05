class State < ApplicationRecord
  has_many :counties
  has_many :primary_results, through: :counties
  has_many :candidates, through: :primary_results
  validates :name, presence: true, uniqueness: true
  validates :abbreviation, presence: true, uniqueness: true
end
