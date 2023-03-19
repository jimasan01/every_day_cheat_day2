class Cheat < ApplicationRecord
  validates :explanation, presence: true
  belongs_to :user
end
