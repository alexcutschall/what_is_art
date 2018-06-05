class NextGallerySearchService
  def initialize(user, id)
    @user = user
    @id = id
  end

  def raw_next_artworks
    parsed_api_request
  end

  private
  attr_reader :user, :id

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def api_request
    response = connection.get do |req|
      req.url "/api/artworks?cursor=#{id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end

  def parsed_api_request
    JSON.parse(api_request, symbolize_names: true)
  end
end
