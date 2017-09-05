FactoryGirl.define do
  factory :county do
    state

    sequence :name do |n|
      names    = ["Harris", "Montgomery", "Kings", "Queens", "El Paso", "Alameda", "Ventura"]
      position = n % names.length - 1

      names[position]
    end
  end
end
