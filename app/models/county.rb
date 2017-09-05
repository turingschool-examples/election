class County < ApplicationRecord
  belongs_to :state
  has_many :primary_results
  validates :name, presence: true

  def state_name
    state.name
  end
end
