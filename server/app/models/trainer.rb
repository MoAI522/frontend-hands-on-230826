class Trainer < ApplicationRecord
  has_many :monsters, foreign_key: :owner_id
end
