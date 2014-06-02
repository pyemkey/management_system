# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :education do
    institution_name "MString"
    started_on "2014-06-02 13:30:31"
    ended_on "2014-06-02 13:30:31"
    thesis_title "MyString"
    degree "MyString"
    user nil
  end
end
