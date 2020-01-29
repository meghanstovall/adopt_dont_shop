require 'rails_helper'

# User story 2
RSpec.describe "shelters index page", type: :feature do
  context 'as a visitor' do
    it "can see all shelter names" do
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

      visit '/shelters'

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_content(shelter_2.name)
    end
  end
end

# User story 4
RSpec.describe "shelters index page", type: :feature do
  context 'as a visitor' do
    it "can click New Shelter, create new shelter, and sent back to shelters index" do
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

      visit "/shelters"
      click_link "New Shelter"
      expect(current_path).to eq("/shelters/new")

      expect(page).to have_content("Name:")
      expect(page).to have_content("Address:")
      expect(page).to have_content("City:")
      expect(page).to have_content("State:")
      expect(page).to have_content("Zipcode")
      expect(page).to have_content("New Shelter info")

      fill_in 'name', with: "Pets4Paws"
      fill_in 'address', with: "1234 Petco Street"
      fill_in 'city', with: "Broomfield"
      fill_in 'state', with: "CO"
      fill_in 'zip', with: "80020"

      click_on "Create Shelter"

      expect(page).to have_content("Pets4Paws")
    end
  end
end
