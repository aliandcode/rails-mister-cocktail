class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient
end
# have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
