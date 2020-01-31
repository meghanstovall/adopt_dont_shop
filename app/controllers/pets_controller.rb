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
    pet = Pet.new({
      image: params[:image],
      name: params[:name],
      age: params[:age],
      sex: params[:sex],
      description: params[:description],
      status: params[:status],
      shelter_id: params[:shelter_id]
      })

    pet.save

    redirect_to "/shelters/#{pet.shelter_id}/pets"
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    shelter_id = pet.shelter_id
    status = pet.status
    pet.update ({
      image: params[:image],
      name: params[:name],
      age: params[:age],
      sex: params[:sex],
      description: params[:description]
      })

      pet.save
      redirect_to "/pets/#{pet.id}"
  end

  private
    def pet_params
      params.permit(:shelter_id, :status)
    end
end
