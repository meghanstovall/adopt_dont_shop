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
      ozzie = Pet.create(image: "",
                       name: "Ozzie",
                       approximate_age: "6",
                       sex: "Male",
                       name_of_shelter: "Mike's Shelter")

      visit '/pets'

      expect(page).to have_content("All Pets")
    end
  end
end
