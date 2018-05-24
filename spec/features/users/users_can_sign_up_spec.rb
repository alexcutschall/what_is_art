require 'rails_helper'

describe 'as an unregistered user' do
  context 'they click on sign up' do
    it 'allows them to sign up' do
      visit '/login'
      click_on 'Sign Up!'

      fill_in 'user[username]', with: 'Batman'
      fill_in 'user[password]', with: 'Robin'
      fill_in 'user[password_confirmation]', with: 'Robin'
      click_on 'Sign Up!'

      expect(current_path).to eq('/')
    end
    it "doesn't allow them to sign up without a password" do
      visit '/login'
      click_on 'Sign Up!'

      fill_in 'user[username]', with: 'Batman'
      fill_in 'user[password]', with: 'Robin'
      fill_in 'user[password]', with: 'Nad'
      click_on 'Sign Up!'

      expect(current_path).to eq('/users/new')
    end
  end
end
