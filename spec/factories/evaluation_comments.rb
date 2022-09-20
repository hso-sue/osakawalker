FactoryBot.define do
  factory :evaluation_comment do
    title {Faker::Lorem.sentence}
    content {Faker::Lorem.sentence}
    rate {Faker::Number.between(from: 0.5, to: 5)}
    association :user
    association :shop
  end
end