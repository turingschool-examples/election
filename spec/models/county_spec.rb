require "rails_helper"

RSpec.describe County, type: :model do
  describe "Validations" do
    it { should validate_presence_of :name }
  end

  describe "Instance Methods" do
    describe "#state_name" do
      it "returns the name of the related state" do
        tx = State.create!(name: "Texas", abbreviation: "TX")
        county = create(:county, state: tx)

        expect(county.state_name).to eq("Texas")
      end
    end
  end
end