require 'rails_helper'

describe 'as a user' do
  context 'visits the homepage' do
    it 'shows Login' do
      visit '/'

      expect(page).to have_content('What is Art?')
    end
  end
end
