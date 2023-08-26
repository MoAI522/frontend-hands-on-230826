FactoryBot.define do
  factory :monster_species do
    sequence(:name) { |n| "sample_species_#{n}" }
  end
end
