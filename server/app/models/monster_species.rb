# frozen_string_literal: true

class MonsterSpecies < ApplicationRecord
  has_many :monsters

  validates :name, presence: true
end
