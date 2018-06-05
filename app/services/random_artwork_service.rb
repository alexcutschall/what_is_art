require 'faraday_middleware'

class RandomArtworkService
  def initialize(user)
    @user = user
  end

  def raw_random_artwork
    JSON.parse(api_request, symbolize_names: true)
  end

  private
  attr_reader :user

  def connection
    Faraday.new('https://api.artsy.net') do |faraday|
      faraday.use FaradayMiddleware::FollowRedirects
      faraday.adapter Faraday.default_adapter
    end
  end

  def api_request
    response = connection.get do |req|
      req.url '/api/artworks?sample'
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
