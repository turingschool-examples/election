FactoryBot.define do
  factory :state do
    sequence :name do |n|
      "State #{n}"
    end

    sequence :abbreviation do |n|
      "S#{n}"
    end
  end
end
