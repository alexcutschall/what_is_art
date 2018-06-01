require 'rails_helper'

describe 'as a user' do
  feature 'when they click on the similar artists' do
    it 'shows them a page of similar artists' do
      user = User.create(username: "Captain American", password: "Bucky", x_app_token: ENV['USER_XAPP_TOKEN'])

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit gallery_path

      within('.image-link') do
        first('.card-img-top').click
      end
      click_on "Go to Artists Page"
      click_on "Genes"

      expect(page).to have_content("Name")
      expect(page).to have_content("Birthday")
      expect(page).to have_content("Deathday")
      expect(page).to have_content("Hometown")
      expect(page).to have_content("Location")
      expect(page).to have_content("Nationality")
    end
  end
end
