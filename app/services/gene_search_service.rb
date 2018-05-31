class GeneSearchService
  def initialize(user, artwork_id)
    @user = user
    @artwork_id = artwork_id
  end

  def raw_gene_information
    parsed_api_request
  end

  private
  attr_reader :artwork_id, :user

  def connection
    Faraday.new('https://api.artsy.net')
  end

  def api_request
    response = connection.get do |req|
      req.url "https://api.artsy.net/api/genes?artwork_id=#{artwork_id}"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-XAPP-Token'] = user.x_app_token
    end
    response.body
  end

  def parsed_api_request
    binding.pry
    JSON.parse(api_request, symbolize_names: true)[:_embedded][:genes]
  end
end
