class QuoteRequestService

  def raw_quote
    JSON.parse(api_request, symbolize_names: true)
  end

  def connection
    Faraday.new('http://quotes.rest')
  end

  def api_request
    response = connection.get do |req|
      req.url '/qod.json?category=inspire'
      req.headers['Accept'] = 'application/json'
      req.headers['X-TheySaidSo-Api-Secret'] = ENV['QOTD_API']
    end
    response.body
  end
end
