require 'rails_helper'

# User story 2
RSpec.describe "shelters index page", type: :feature do
  context 'as a visitor' do
    it "can see all shelter names" do
      shelter_1 = Shelter.create(name: 'Pets4Paws',
                                 address: '1234 Pets Street',
                                 city: 'Broomfield',
                                 state: 'CO',
                                 zip: '80020')
      shelter_2 = Shelter.create(name: '4TheCause',
                                address: '5678 Cause Street',
                                city: 'Westminster',
                                state: 'CO',
                                zip: '80234')

      visit '/shelters'

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_content(shelter_2.name)
    end
  end
end

# User story 3
RSpec.describe "shelters index page", type: :feature do
  context 'as a visitor' do
    it "can see one shelter's information" do
      shelter_1 = Shelter.create(name: 'Pets4Paws',
                                 address: '1234 Pets Street',
                                 city: 'Broomfield',
                                 state: 'CO',
                                 zip: '80020')
      shelter_2 = Shelter.create(name: '4TheCause',
                                 address: '5678 Cause Street',
                                 city: 'Westminster',
                                 state: 'CO',
                                 zip: '80234')

      visit "/shelters/#{shelter_1.id}"

      expect(page).to have_content(shelter_1.name)
    end
  end
end
