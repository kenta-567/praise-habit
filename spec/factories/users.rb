FactoryBot.define do
  factory :user do
    nickname { Faker::Lorem.characters(number:10) }
    email { Faker::Lorem.characters(number:20) }
    job { Faker::Lorem.characters(number:10) }
    encrypted_password { Faker::Lorem.characters(number:15) }
  end
end