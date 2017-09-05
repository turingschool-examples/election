require 'rails_helper'

describe Candidate do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'instance methods' do
    describe '#party_name' do
      it 'returns the name of party of the candidate' do
        party = Party.create(name: "Republican")
        can = create(:candidate, party: party)

        expect(can.party_name).to eq("Republican")
      end
    end

    describe "#total_votes" do
      it "returns the total number of votes for a candidate" do
        c1    = create(:candidate)
        c2    = create(:candidate)
        p1, p2, p3 = create_list(:primary_result, 3, candidate: c1)
        p4, p5 = create_list(:primary_result, 2, candidate: c2)

        c1_total = p1.votes + p2.votes + p3.votes
        c2_total = p4.votes + p5.votes

        expect(c1.total_votes).to eq(c1_total)
        expect(c2.total_votes).to eq(c2_total)
      end
    end
  end

end
