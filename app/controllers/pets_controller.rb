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
      sex: params[:sex]
      })

      pet.save

      redirect_to '/pets'
  end
end
