# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :announce do
    title "MyString"
    text "MyText"
    popup "MyString"
    window_height 1
    window_width 1
    expiration "2014-06-16"
  end
end
