FactoryBot.define do
  factory :trainers do
    sequence(:name) { |n| "sample_trainers_#{n}" }
  end
end
