class BookController < ApplicationController
  def index
    monster_species = MonsterSpecies.all
    response_data = monster_species.map { |value| { species_id: value.id, species_name: value.name } }

    render status: :ok, json: response_data
  end
end
