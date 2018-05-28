require 'rails_helper'

describe 'as a user' do
  feature 'they can go to a art piece show page' do
    it 'shows them the information for that show page' do
      user = User.create(username: "IronMan", password: "IronPatriot", x_app_token: ENV['USER_XAPP_TOKEN'])

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit gallery_path
      first('.image-link').click
      
      expect(page).to have_content("ID")
      expect(page).to have_content("Title")
      expect(page).to have_content("Category")
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
