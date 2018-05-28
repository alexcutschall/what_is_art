class QuoteSearch

  def quote
    Quote.new(parsed_request)
  end

  private
  def parsed_request
    request[:contents][:quotes].first
  end

  def request
    QuoteRequestService.new.raw_quote
  end
end
