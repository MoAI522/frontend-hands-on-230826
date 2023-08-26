FactoryBot.define do
  factory :monsters do
    sequence(:name) { "sample_monster_#{n}" }
    level { 5 }
    association :monster_species
    association :trainers
  end
end
