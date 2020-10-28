class IngredientsController < ApplicationController
  def new 
    @ingredient = Ingredient.new
  end

  def create 
    Ingredient.create(name: params[:ingredient][:name])
    flash[:message] = "Ingredient created" 
    redirect_to new_ingredient_path
  end
end
