require 'rails_helper'

describe 'as a user' do
  feature 'when they click on the similar artists' do
    it 'shows them a page of similar artists' do
      user = User.create(username: "Captain American", password: "Bucky", x_app_token: ENV['USER_XAPP_TOKEN'])

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit gallery_path

      visit '/artist/4d8b92eb4eb68a1b2c000968'
      click_on "Learn More About This Artist's Style!"

      expect(page).to have_content("Name")
      expect(page).to have_content("Description")
      expect(page).to have_content("Artworks")
      expect(page).to have_content("Artists")
    end
  end
end
