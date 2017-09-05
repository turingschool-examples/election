FactoryGirl.define do
  factory :party do
    sequence :name do |n|
      names    = ["Democrat", "Republican", "Green", "Liberatrian"]
      position = n % names.length - 1

      names[position]
    end
  end
end
