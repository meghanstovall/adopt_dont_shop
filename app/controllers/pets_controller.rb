class PetsController < ApplicationController

  def index
    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
      @pets = @shelter.pets
    else
      @pets = Pet.all
    end
  end

  def new
    @shelter_id = params[:shelter_id]
  end

  def create
    pet = Pet.create!(pet_params)

    redirect_to "/shelters/#{pet.shelter_id}/pets"
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private
    def pet_params
      params.permit(:name, :image, :age, :sex, :description, :status, :shelter_id)
    end
end
