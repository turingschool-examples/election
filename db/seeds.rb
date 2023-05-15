require "csv"

class Importer
  def self.import
    @results = CSV.open("./db/data/primary_results.csv", headers: true, header_converters: :symbol)
    start_time = Time.now
    @results.each do |result|
      ActiveRecord::Base.transaction do
        state     = State.find_or_create_by(name: result[:state], abbreviation: result[:state_abbreviation])
        county    = County.find_or_create_by(name: result[:county], fips_code: result[:fips], state: state)
        party     = Party.find_or_create_by(name: result[:party])
        candidate = Candidate.find_or_create_by(name: result[:candidate], party: party)

        pr = PrimaryResult.create(county: county, candidate: candidate, votes: result[:votes], fraction_votes: result[:fraction_votes])
        puts "PR ##{pr.id} created."
      end
    end
    end_time = Time.now
    puts "#{end_time - start_time} to import records."
  end
end

Importer.import
