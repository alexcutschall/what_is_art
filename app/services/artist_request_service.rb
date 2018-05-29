class ArtistRequestService
  def initialize(artwork_id, user)
    @artwork_id = artwork_id
    @user = user
  end

  def raw_artist
    JSON.parse(api_request, symbolize_names: true)
  end

  private
  attr_reader :artwork_id, :user

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def api_request
    response = connection.get do |req|
      req.url "/api/artists?artwork_id=#{artwork_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
