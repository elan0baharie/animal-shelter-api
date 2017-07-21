FactoryGirl.define do
  factory :animal do
    name Faker::Name.first_name
    age Faker::Number.between(1, 10)
    adopted Faker::Boolean.boolean
  end
end
