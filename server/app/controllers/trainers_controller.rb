# frozen_string_literal: true

class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    response_data = trainers.map do |trainer|
      { trainer_id: trainer.id, name: trainer.name, monster_count: trainer.monsters.count }
    end

    render status: :ok, json: response_data
  end

  def show
    trainer = Trainer.find(params[:id])
    if trainer.present?
      monsters = trainer.monsters.map do |monster|
        species = MonsterSpecies.find(monster.monster_species_id)
        {
          monster_id: monster.id,
          species_id: monster.monster_species_id,
          species_name: species.name,
          name: monster.name,
          level: monster.level
        }
      end
      response_data = { trainer_id: trainer.id, name: trainer.name, monsters: }
      render status: :ok, json: response_data
    else
      render status: :bad_request
    end
  end

  def create
    trainer = Trainer.new(trainer_params)
    if trainer.save
      render status: :ok
    else
      render status: :bad_request
    end
  end

  private

  def trainer_params
    params.permit(:name)
  end
end
