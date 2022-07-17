FactoryBot.define do
  factory :post do
    text       { Faker::Lorem.sentence }
    feeling_id { Faker::Number.between(from: 1, to: 11) }
    color_id   { Faker::Number.between(from: 1, to: 9) }
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
