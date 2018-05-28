require 'rails_helper'

describe 'as a user' do
  context 'they can visit the gallery' do
    it 'shows an index of all the artworks' do
      user = User.create(username: "Harley Quinn", password: "Mr.J", x_app_token: ENV['USER_XAPP_TOKEN'])
      
      conn = Faraday.new('https://api.artsy.net')
      response = conn.get do |req|
        req.url '/api/artworks'
        req.headers['Content-Type'] = 'application/json'
        req.headers['X-XAPP-Token'] = user.x_app_token
      end

      actual  = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_success
    end
  end
end
