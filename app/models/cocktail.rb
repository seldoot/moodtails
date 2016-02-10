class Cocktail < ActiveRecord::Base
  belongs_to :mood
  has_many :ingredients
end
