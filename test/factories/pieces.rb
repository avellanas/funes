# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    issue_num 1
    page 1
    type_id "MyString"
    title "MyString"
    subtitle "MyString"
    exlibris "MyString"
    text "MyText"
    footer "MyText"
    css "MyText"
    parent_id 1
    child_order 1
  end
end
