require 'rails_helper'

# User story 3
RSpec.describe "shelters show id page", type: :feature do
  context 'as a visitor' do
    it "can see one shelter's information" do
      shelter_1 = Shelter.create!(name: "Mike's Shelter",
                                 address: '1331 17th Street',
                                 city: 'Denver',
                                 state: 'CO',
                                 zip: '80202')
      shelter_2 = Shelter.create!(name: "Meg's Shelter",
                                 address: '150 Main Street',
                                 city: 'Hershey',
                                 state: 'PA',
                                 zip: '17033')

      visit "/shelters/#{shelter_1.id}"

      expect(page).to have_content("Shelter ID: #{shelter_1.id}")
      expect(page).to have_content("Shelter: #{shelter_1.name}")
      expect(page).to have_content("Address: #{shelter_1.address}")
      expect(page).to have_content("City: #{shelter_1.city}")
      expect(page).to have_content("State: #{shelter_1.state}")
      expect(page).to have_content("Zipcode: #{shelter_1.zip}")
    end
  end
end

# USer story 5
RSpec.describe "shelters show id page", type: :feature do
  context "as a visitor" do
    it "can update a shelter" do
      shelter_1 = Shelter.create!(name: "Mike's Shelter",
                                 address: '1331 17th Street',
                                 city: 'Denver',
                                 state: 'CO',
                                 zip: '80202')
      shelter_2 = Shelter.create!(name: "Meg's Shelter",
                                 address: '150 Main Street',
                                 city: 'Hershey',
                                 state: 'PA',
                                 zip: '17033')

      visit "/shelters/#{shelter_1.id}"

      expect(page).to have_content("Update Shelter")
    end
  end
end
