
FactoryBot.define do
  factory :item do
    association :category
    title { "test" }
    description { "This is item" }
    price { 100 }
  end
end
