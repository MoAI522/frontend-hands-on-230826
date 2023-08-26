class MonstersController < ApplicationController
  def create
    monster = Monster.new(monster_params)
    if monster.save
      render status: :ok
    else
      render status: :bad_request, json: monster.errors.full_messages
    end
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :monster_species_id, :owner_id, :level)
  end
end
