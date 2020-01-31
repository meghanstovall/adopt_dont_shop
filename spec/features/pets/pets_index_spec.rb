require 'rails_helper'

# User story 7
RSpec.describe "pets index page", type: :feature do
  context "as a visitor" do
    it "can see all pet names" do
      shelter_1 = Shelter.create(name: "Mike's Shelter",
                                 address: '1331 17th Street',
                                 city: 'Denver',
                                 state: 'CO',
                                 zip: '80202')
      shelter_2 = Shelter.create(name: "Meg's Shelter",
                                 address: '150 Main Street',
                                 city: 'Hershey',
                                 state: 'PA',
                                 zip: '17033')
      pet = Pet.create(image: "https://image.shutterstock.com/image-photo/happy-golden-retriever-dog-sitting-600w-1518698711.jpg",
                        name: "Ozzie",
                        age: "6",
                        sex: "Male",
                        shelter_id: shelter_1.id,
                        description: "Good boy",
                        status: "pending")

      visit '/pets'

      expect(page).to have_css("img[src*='#{pet.image}']")
      expect(page).to have_content("#{pet.age}")
      expect(page).to have_content("#{pet.sex}")
      expect(page).to have_content("#{pet.shelter.name}")
    end
  end
end
