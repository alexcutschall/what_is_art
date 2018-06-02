class GeneSearchService
  def initialize(user, search_id)
    @user = user
    @search_id = search_id
  end

  def raw_artwork_gene_information
    parsed_artwork_api_request
  end

  def raw_artist_gene_information
    parsed_artist_api_request
  end

  private
  attr_reader :search_id, :user

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def artwork_api_request
    response = connection.get do |req|
      req.url "https://api.artsy.net/api/genes?artwork_id=#{search_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end

  def parsed_artwork_api_request
    JSON.parse(api_request, symbolize_names: true)[:_embedded][:genes]
  end

  def arist_api_request
    response = connection.get do |req|
      req.url "https://api.artsy.net/api/genes?artwork_id=#{search_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end

  def parsed_artist_api_request
    artist_api_request
  end
end
