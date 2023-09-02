# frozen_string_literal: true

class BookController < ApplicationController
  def index
    monster_species = MonsterSpecies.all
    response_data = monster_species.map { |value| { species_id: value.id, species_name: value.name } }

    render status: :ok, json: response_data
  end

  def create
    new_species = MonsterSpecies.new(book_params)
    if new_species.save
      render status: :ok
    else
      render status: :bad_request, json: new_species.errors.full_messages
    end
  end

  private

  def book_params
    params.permit(:name)
  end
end
