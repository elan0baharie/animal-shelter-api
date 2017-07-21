class Api::V1::AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    if params[:name]
      name = params[:name]
      @animals = Animal.search(name)
    end
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "The listing for #{@animal.name} has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 204, json: {
        message: "Your listing has been deleted."
      }
    end
  end

  private
    def animal_params
      params.permit(:name, :age, :adopted)
    end
end
