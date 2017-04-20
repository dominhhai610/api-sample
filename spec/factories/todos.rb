FactoryGirl.define do
  factory :todo do
    title {Faker::Lorem.word}
    created_by {Faker::Number.Number(10)}
  end
end
