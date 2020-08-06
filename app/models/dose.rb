class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true, uniqueness: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
