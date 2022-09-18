FactoryBot.define do
  factory :evaluation_commnet do
    content {Faker::Lorem.sentence}
    association :user
    association :room
  end
end