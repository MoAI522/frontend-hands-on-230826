class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    response_data = trainers.map do |trainer|
      { trainerId: trainer.id, name: trainer.name, monsterCount: trainer.monsters.count }
    end

    render status: :ok, json: response_data
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
