FactoryGirl.define do
  factory :user do
    name "高尾3"
    sequence(:email) { |n| "johndoe#{n}@example.com"}
    password "password"    
  end
end
