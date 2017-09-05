class State < ApplicationRecord
  has_many :counties
  validates :name, presence: true, uniqueness: true
  validates :abbreviation, presence: true, uniqueness: true
end
