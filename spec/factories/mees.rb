FactoryBot.define do
  factory :mee do
    text { Faker::Lorem.sentence }
    association :user
    
  end
end
