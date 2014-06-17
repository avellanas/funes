# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :art do
    issue 1
    title "MyString"
    info "MyString"
    is_splash "MyString"
    is_footer "MyString"
    type ""
    au_id 1
    width "MyString"
  end
end
