FactoryBot.define do
  factory :stock do
    name             {Faker::Lorem.sentence}

    association :user 
    
  end
end
