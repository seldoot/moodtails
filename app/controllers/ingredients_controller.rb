class IngredientsController < ApplicationController
  before_action :set_cocktail
  

  def create
    @ingredient = @cocktail.ingredients.create(ingredient_params)
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
  end

  def destroy
    @ingredient = @cocktail.ingredients.find(params[:id])
    if @ingredient.destroy
      flash[:notice] = "Ingredient Deleted"
    else
      flash[:notice] = "Ingredient Couldn't be Deleted"
    end
    redirect_to @cocktail
  end

  private
    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def ingredient_params
    	params[:ingredient].permit(:ing_item, :unit, :amount, :cocktail_id)
    end
 
  
end
