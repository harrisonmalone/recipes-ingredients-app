class RecipesController < ApplicationController
  def new 
    @ingredients = Ingredient.all.map { |i| i.name }
    @recipe = Recipe.new
  end

  def create 
    recipe_params = { name: params[:name], description: params[:description], dish_type: params[:dish_type] }
    recipe = Recipe.create(recipe_params)
    params[:recipe][:ingredients].each do |ingredient|
      recipe.ingredients << Ingredient.find_by_name(ingredient)
    end
    flash[:message] = "Recipe created"
    redirect_to new_recipe_path 
  end
end
