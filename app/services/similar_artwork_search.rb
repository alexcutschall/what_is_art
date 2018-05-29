class SimilarArtworkSearch
  def initialize(user, artwork_id)
    @user = user
    @artwork_id = artwork_id
  end

  def artworks
    parsed_request.map do |information|
      Artwork.new(information)
    end
  end

  private
  attr_reader :user, :artwork_id

  def request
    SimilarArtworkService.new(user, artwork_id).raw_artworks
  end

  def parsed_request
    request[:_embedded][:artworks]
  end
end
