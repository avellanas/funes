# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    name_first "MyString"
    name_mid "MyString"
    name_last "MyString"
    bio "MyText"
  end
end
