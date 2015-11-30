FactoryGirl.define do
  factory :todo do
    name Faker::Hipster.sentence
    completed false
    tasklist
  end
end
