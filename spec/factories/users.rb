# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(8) } 
  end

  factory :confirmed_user, parent: :user do
    after(:create) { |user| user.confirm! }
  end
end
