class Api::PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
    render :index
  end

  def show
    @pokemon = Pokemon.find_by(id: params[:id])
    if @pokemon
      render :show
    else
      render json: @pokemon.errors.full_messages, status: 404
    end
  end

end
