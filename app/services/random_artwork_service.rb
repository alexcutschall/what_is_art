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
    Faraday.new('https://api.artsy.net')
  end

  def link_api_request
    response = connection.get do |req|
      req.url '/api/artworks?sample'
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def parsing_link_api_request
    link_api_request[:_links][:location][:href]
  end

  def formatted_link_request
    parsing_link_api_request.split('.net')[1]
  end

  def api_request
    response = connection.get do |req|
      req.url "#{formatted_link_request}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end
end
