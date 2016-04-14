FactoryGirl.define do
  factory :stock do
    title "Test tittle"
    text  "Test text"
    sequence(:url) { |i| "test#{i}" }
  end
end
