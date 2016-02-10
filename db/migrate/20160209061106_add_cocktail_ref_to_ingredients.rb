class AddCocktailRefToIngredients < ActiveRecord::Migration
  def change
    add_reference :ingredients, :cocktail, index: true, foreign_key: true
  end
end
