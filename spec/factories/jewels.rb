FactoryBot.define do
  factory :jewel do
    name { Faker::Name.first_name }
    desc { Faker::Games::Pokemon.move }
    tags { Faker::Games::Pokemon.name }
  end
end
