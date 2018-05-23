require 'rails_helper'

describe 'as a user' do
  context 'visits the homepage' do
    it 'shows Log In' do
      visit '/'

      expect(page).to have_content('Log in')
    end
  end
end
