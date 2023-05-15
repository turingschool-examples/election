require "rails_helper"

RSpec.describe PrimaryResult do
  describe "Validations" do
    it { should validate_presence_of :votes }
  end

  describe "Class Methods" do
    it ".total" do
      create(:primary_result, votes: 4)
      create(:primary_result, votes: 3)

      expect(PrimaryResult.total).to eq(7)
    end
  end

  describe "Instance Methods" do
    it "#state_name" do
      state  = State.create(name: "Alabama", abbreviation: "AL")
      county = create(:county, state: state)
      pr     = create(:primary_result, county: county)

      expect(pr.state_name).to eq(state.name)
    end
  end
end