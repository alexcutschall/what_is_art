require 'rails_helper'

describe 'as a user' do
  context 'when they visit an art show page' do
    feature 'they can click on the artists link' do
      it 'takes them to that artists page' do
        user = User.create(username: "Captain American", password: "Bucky", x_app_token: ENV['USER_XAPP_TOKEN'])

        allow_any_instance_of(ApplicationController).to recieve(:current_user).and_return(user)
        visit gallery_path
        first('.image-link').click

        click_on "Go to Artists Page"

        expect(page).to have_content("Name")
        expect(page).to have_content("Biography")
        expect(page).to have_content("Birthday")
        expect(page).to have_content("Deathday")
        expect(page).to have_content("Hometown")
        expect(page).to have_content("Location")
        expect(page).to have_content("Nationality")
      end
    end
  end
end
