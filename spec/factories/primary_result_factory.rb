FactoryGirl.define do
  factory :primary_result do
    county
    candidate

    sequence :votes
    sequence :fraction_votes do |n|
      0.5 / n
    end
  end
end
