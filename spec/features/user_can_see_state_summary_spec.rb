require "rails_helper"

RSpec.describe "When a user visits /states/:id", type: :feature do
  scenario "they see a summary of votes within that state by candidate" do
    state = create(:state)
    candidate1, candidate2 = create_list(:candidate, 2)
    county1, county2 = create_list(:county, 2, state: state)
    pr1 = create(:primary_result, candidate: candidate1, county: county1)
    pr2 = create(:primary_result, candidate: candidate1, county: county2)
    pr3 = create(:primary_result, candidate: candidate2, county: county1)
    pr4 = create(:primary_result, candidate: candidate2, county: county2)
    candidate1_votes = pr1.votes + pr2.votes
    candidate2_votes = pr3.votes + pr4.votes

    visit state_path(state)

    within(".summary") do
      expect(page).to have_content("#{candidate1.name}: #{candidate1_votes}")
      expect(page).to have_content("#{candidate2.name}: #{candidate2_votes}")
    end
  end
end