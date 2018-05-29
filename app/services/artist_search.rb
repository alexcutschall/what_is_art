class ArtistSearch
  def initialize(artwork_id, user)
    @artwork_id = artwork_id
    @user = user
  end

  def artist
    parsed_request.map do |information|
      Artist.new(information)
    end
  end

  private
  attr_reader :artwork_id, :user

  def request
    ArtistRequestService.new(artwork_id, user).raw_artist
  end

  def parsed_request
    request[:_embedded][:artists]
  end

end
