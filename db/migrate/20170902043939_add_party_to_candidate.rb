class AddPartyToCandidate < ActiveRecord::Migration[5.1]
  def change
    add_reference :candidates, :party, foreign_key: true
  end
end
