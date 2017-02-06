FactoryGirl.define do
  factory :channel do
    name { Faker::Company.unique.name }
  end

  factory :schedule do
    channel
  end
end
