FactoryBot.define do
  factory :favorite do
    jewel_id {Faker::Number.between(from: 1, to: 10)}
    user_id  {Faker::Number.between(from: 1, to: 10)}
  end
end
