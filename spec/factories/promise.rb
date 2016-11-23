FactoryGirl.define do
  factory :promise do
    promise_time Time.now
    limit_time Time.now + 20
    title "あのよろし"
    content "テストおお"
  end
end
