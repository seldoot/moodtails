class IngredientsController < ApplicationController
  before_action :set_cocktail
  

  def create
  	@ingredient = Ingredient.new(ingredient_params)
  	if @ingredient.save
  		flash[:notice] = "Ingredient Saved"
  		redirect_to @cocktail
  	else
  		render :new
  	end
  end

  def show
  	@ingredient = Ingredient.find(params[:id])
  end

  def edit
  	@ingredient = Ingredient.find(params[:id])
  end

  def update
  	@ingredient = Ingredient.find(params[:id])
  	if @ingredient.update (ingredient_params)
  		flash[:notice] = "Ingredient Updated"
  	else
  		render :edit
  	end

  private
  def ingredient_params
  	params.require(:ingredient, :unit, :amount).permit(:cocktail_id)
  end
 
  def set_cocktail
  	@cocktail = Cocktail.find(params[:cocktail_id])
  end
end
