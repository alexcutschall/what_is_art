require 'rails_helper'

describe 'as a user' do
  context 'when they visit an artwork show page' do
    feature 'when they click on the genes page' do
      it 'shows them information concerning those genes' do
        user = User.create(username: 'Wolverine', password: 'Logan', x_app_token: ENV['USER_XAPP_TOKEN'])

        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        visit gallery_path
        first('.image-link').click

        click_on "Learn More About The Genes/Categories!"
        expect(page).to have_content("Display Name")
        expect(page).to have_content("Description")
        expect(page).to have_content("Artworks")
        expect(page).to have_content("Artists")
      end
    end
  end
end
