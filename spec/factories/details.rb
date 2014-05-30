# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :detail do
    user nil
    birthday "2014-05-29 11:45:36"
    gender 1
    marital_status 1
  end
end
