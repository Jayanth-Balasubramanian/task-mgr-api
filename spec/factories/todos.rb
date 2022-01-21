FactoryBot.define do
  factory :todo do
    name { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
  end
end
