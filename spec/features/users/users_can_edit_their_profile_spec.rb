require 'rails_helper'

describe 'as a user' do
  context 'when they click on edit profile' do
    it 'allows them to update their info' do
      user = User.create(username: "Joker", password: "killingjoke")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)
      click_on "Edit Profile"

      expect(current_path).to eq("/users/#{user.id}/edit")
      fill_in "user[username]", with: "Harley Quinn"
      click_on "Update Profile!"

      expect(current_path).to eq("/users/#{user.id}")
      expect(page).to have_content("Harley Quinn")
    end
  end
end
