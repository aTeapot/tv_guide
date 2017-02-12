FactoryGirl.define do
  factory :channel do
    name { Faker::Company.unique.name }
  end

  factory :schedule do
    channel
  end

  factory :category do
    name { Faker::Lorem.unique.word }
  end

  factory :show do
    name { Faker::Book.title }
    description { Faker::Lorem.sentence }
    category
  end

  factory :schedule_item do
    air { 1.day.from_now }
    schedule
    show
  end
end
