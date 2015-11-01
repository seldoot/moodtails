class CocktailsController < ApplicationController
	before_action :set_mood


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

private

	def set_mood
		@mood = Mood.find(params[:mood_id])
	end

	def cocktail_params
		params[:cocktail].permit(:drink_name)
	end

end
