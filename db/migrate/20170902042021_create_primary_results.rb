class CreatePrimaryResults < ActiveRecord::Migration[7.0]
  def change
    create_table :primary_results do |t|
      t.references :county, foreign_key: true
      t.references :candidate, foreign_key: true
      t.integer :votes
      t.decimal :fraction_votes

      t.timestamps
    end
  end
end
