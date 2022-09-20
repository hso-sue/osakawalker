FactoryBot.define do
  factory :shop do
    shop_genre_id {Faker::Number.between(from: 1, to: 100)}
    shop_name {Faker::Lorem.sentence}
    introduction {Faker::Lorem.sentence}
    prefecture_id {Faker::Number.between(from: 1, to: 100)}
    shop_city_id {Faker::Number.between(from: 1, to: 100)}
    shop_address {Faker::Address.street_address}
    association :user

    after(:build) do |shop|
      shop.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end