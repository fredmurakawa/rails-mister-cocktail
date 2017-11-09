class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :cocktail, uniqueness: { scope: :ingredient }
  validates :description, :cocktail, :ingredient, presence: true

end
