class AddPartyToCandidate < ActiveRecord::Migration[7.0]
  def change
    add_reference :candidates, :party, foreign_key: true
  end
end
