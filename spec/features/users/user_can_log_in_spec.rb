require 'rails_helper'

describe 'as a user' do
  context 'they click on login and fill in their information' do
    it 'logs them in' do
      user = User.create(username: "alexcutschall", password: "12345")

      visit '/'
      click_on 'Login'

      expect(current_path).to eq('/login')

      fill_in 'username', with: user.username
      fill_in 'password', with: user.password
      click_on 'Login'

      expect(current_path).to eq("/users/#{user.id}")
      expect(page).to have_content("Welcome back, #{user.username}!")
    end
  end
end
