class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
  end

  def create
    pet = Pet.new({
      name: params[:name],
      image: params[:image],
      age: params[:age],
      sex: params[:sex],
      name_of_shelter: params[:name_of_shelter],
      shelter_id: params[:shelter_id]
      })

      pet.save

      redirect_to '/pets'
  end
end
