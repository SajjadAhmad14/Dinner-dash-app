require 'faker'

FactoryBot.define do
  factory :user do
    fullname {Faker::Name.name}
    email {Faker::Internet.email}
    password {"123456"}
    displayname {"test"}
  end
end