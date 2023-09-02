# frozen_string_literal: true

class Monster < ApplicationRecord
  belongs_to :monster_species
  belongs_to :owner, class_name: 'Trainer'

  validates :name, presence: true
  validates :level, presence: true, comparison: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
end
