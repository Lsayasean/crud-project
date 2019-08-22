FactoryBot.define do
  factory :comment do
    jewel_id {Faker::Number.between(from: 1, to: 10)}
    user_id  {Faker::Number.between(from: 1, to: 10)}
    content {Faker::ProgrammingLanguage.name}
  end
end
