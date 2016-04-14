FactoryGirl.define do
  factory :new do
    title "Test tittle"
    text  "Test text"
    sequence(:url) { |i| "test#{i}" }
  end
end
