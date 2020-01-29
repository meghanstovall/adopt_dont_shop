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
    it "can see link, New Shelter, to create new shelter" do
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

      expect(page).to have_link("New Shelter")
    end
  end
end

# User story 4
RSpec.describe "shelters index page", type: :feature do
  context 'as a visitor' do
    it "can click New Shelter link and taken to a form" do
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

      expect(page).to have_content("New Shelter info:")
      expect(page).to have_content("Shelter name:")
    end
  end
end
