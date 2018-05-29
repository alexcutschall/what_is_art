class SimilarArtworkService
  def initialize(user, artwork_id)
    @user = user
    @artwork_id = artwork_id
  end

  def raw_artworks
    JSON.parse(request, symbolize_names: true)
  end

  private
  attr_reader :user, :artwork_id

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def request
    response = connection.get do |req|
      req.url "/api/artworks?similar_to_artwork_id=#{artwork_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
