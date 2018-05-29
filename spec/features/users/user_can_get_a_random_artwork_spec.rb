require 'rails_helper'

describe 'as a user' do
  feature "when they click on the button 'I'm feeling Artsy" do
    it 'shows them a random artwork' do
      user = User.create(username: 'Deadpool', password: 'Merc', x_app_token: ENV['USER_XAPP_TOKEN'])

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit user_path(user)
      click_on "I'm Feeling Artsy"

      expect(page).to have_css('.artwork-information', count: 1)
      expect(page).to have_content("Title")
      expect(page).to have_content("Medium")
      expect(page).to have_content("Date")
      expect(page).to have_content("Series")
      expect(page).to have_content("Literature")
      expect(page).to have_content("Collecting Institution")
      expect(page).to have_content("Artist")
      expect(page).to have_content("Similar Artworks")
      expect(page).to have_content("Gene")
    end
  end
end
