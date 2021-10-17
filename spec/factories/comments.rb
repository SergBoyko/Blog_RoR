FactoryBot.define do
  factory :comment do
    author { "Chuck Noris" }
    sequence(:body){|n| "comment body #{n}"}
  end
end
