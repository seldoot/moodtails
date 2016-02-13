class CocktailsController < ApplicationController
	before_action :set_mood, only: [:create, :destroy]
	before_action :set_cocktail, only: :show


	def create
		@cocktail = @mood.cocktails.create(cocktail_params)

		redirect_to @mood 
	end

	def destroy
		@cocktail = @mood.cocktails.find(params[:id])
		if @cocktail.destroy
			flash[:success] = "Cocktail was removed."
		else
			flash[:error] = "Cocktail could not be removed."
		end
		redirect_to @mood
	end

	def show
		@mood = Mood.find(params[:mood_id])
	end

private

	def set_mood
		@mood = Mood.find(params[:mood_id])
	end

	def set_cocktail
		@cocktail = Cocktail.find(params[:id])
	end

	def cocktail_params
		params[:cocktail].permit(:drink_name)
	end

end
