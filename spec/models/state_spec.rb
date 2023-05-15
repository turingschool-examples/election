require "rails_helper"

describe State do
  describe "Validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should validate_presence_of :abbreviation }
    it { should validate_uniqueness_of :abbreviation }
  end
end