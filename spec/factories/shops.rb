FactoryBot.define do
  factory :shop do
    shop_genre_id {Faker::Team.name}
    shop_name {Faker::Team.name}
    introduction {Faker::Team.name}
    prefecture_id {Faker::Team.name}
    shop_city_id {Faker::Team.name}
    shop_address {Faker::Team.name}
    association :user

    after(:build) do |shop|
      shop.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end