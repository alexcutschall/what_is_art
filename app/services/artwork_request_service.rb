class ArtworkRequestService
  def initialize(user, id)
    @user = user
    @art_id = id
  end

  def raw_artwork
    JSON.parse(api_request, symbolize_names: true)
  end

  private
  attr_reader :art_id, :user

  def connection
    connection = Faraday.new('https://api.artsy.net')
  end

  def api_request
    response = connection.get do |req|
      req.url "/api/artworks/#{art_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
