FactoryGirl.define do
  factory :article do
    title "Test tittle"
    text  "Test text"
    sequence(:url) { |i| "test#{i}" }
  end
end
