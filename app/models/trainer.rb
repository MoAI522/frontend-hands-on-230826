# frozen_string_literal: true

class Trainer < ApplicationRecord
  has_many :monsters, foreign_key: :owner_id

  validates :name, presence: true
end
