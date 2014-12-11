class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def create
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.name = params[:name]
  	@pokemon.level = params[:level]
  	@pokemon.description = params[:description]
    @pokemon.save
  	redirect_to edit_pokemon_path
  end 

  def pokemon_params
  	params.require(:pokemon).permit(:name, :description, :level, :user_id)
  end
end
