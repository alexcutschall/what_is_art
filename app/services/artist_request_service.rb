class ArtistRequestService
  def initialize(searchable_id, user)
    @searchable_id = searchable_id
    @user = user
  end

  def raw_artist
    JSON.parse(api_request, symbolize_names: true)
  end

  def raw_contemporary_artists
    JSON.parse(contemporary_artist_api_request, symbolize_names: true)
  end

  def raw_similar_artists
    JSON.parse(similar_artist_api_request, symbolize_names: true)
  end

  private
  attr_reader :searchable_id, :user

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def api_request
    response = connection.get do |req|
      req.url "/api/artists?artwork_id=#{searchable_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end

  def contemporary_artist_api_request
    response = connection.get do |req|
      req.url "/api/artists?similar_to_artist_id=#{searchable_id}&similarity_type=contemporary"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end

  def similar_artist_api_request
    response = connection.get do |req|
      req.url "/api/artists?similar_to_artist_id=#{searchable_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
