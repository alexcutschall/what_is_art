require 'rails_helper'

describe 'as a user' do
  feature 'when they visit the gallery page' do
    it 'allows them to scroll through all of the artworks' do
      user = User.create(username: "Spiderman", password: "MaryJane", x_app_token: ENV['USER_XAPP_TOKEN'])

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit gallery_path
      click_on "Next Page"

      expect(page).to have_css('.artwork', count: 5)
      expect(page).to have_content('Gallery')
      expect(page).to have_content('Search')
    end
  end
end
