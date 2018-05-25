require 'rails_helper'

describe 'as a user' do
  context 'when they visit their profile page' do
    it 'they see their information' do
      user = User.create(username: "Alex", password: "12345")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)

      expect(page).to have_content("#{user.username}")
      expect(page).to have_content("Favorites")
      expect(page).to have_content("Quote of the Day")
    end
  end
end
