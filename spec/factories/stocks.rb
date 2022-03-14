FactoryBot.define do
  factory :stock do
    title             {Faker::Lorem.sentence}

    association :user 
    
  end
end
