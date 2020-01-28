require 'rails_helper'

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

      visit '/shelters/1'

      save_and_open_page
      expect(page).to have_content(shelter_1.name)
    end
  end
end
