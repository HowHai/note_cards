# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resource do
    content "MyText"
    note_card nil
  end
end
