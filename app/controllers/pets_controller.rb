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
  end

  def create
    pet = Pet.new({
      name: params[:name],
      image: params[:image],
      age: params[:age],
      sex: params[:sex]
      })

      pet.save

      redirect_to '/pets'
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
