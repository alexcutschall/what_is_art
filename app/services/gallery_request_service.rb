class GalleryRequestService
  def initialize(user)
    @user = user
  end

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def raw_artworks
    JSON.parse(api_request, symbolize_names: true)
  end

  private
  attr_reader :user

  def api_request
    response = connection.get do |req|
      req.url '/api/artworks'
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
