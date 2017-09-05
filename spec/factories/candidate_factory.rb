FactoryGirl.define do
  factory :candidate do
    sequence :name do |n|
      "Candidate #{n}"
    end

    party
  end
end
