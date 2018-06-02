class ArtistSearch
  def initialize(searchable_id, user)
    @searchable_id = searchable_id
    @user = user
  end

  def artist
    artist_parsed_request.map do |information|
      Artist.new(information)
    end
  end

  def contemporary_artists
    contemporary_artist_parsed_request.map do |information|
      Artist.new(information)
    end
  end

  private
  attr_reader :searchable_id, :user

  def artist_request
    ArtistRequestService.new(searchable_id, user).raw_artist
  end

  def artist_parsed_request
    artist_request[:_embedded][:artists]
  end

  def contemporary_artists_request
    ArtistRequestService.new(searchable_id, user).raw_contemporary_artists
  end

  def contemporary_artist_parsed_request
    contemporary_artists_request[:_embedded][:artists]
  end

end
