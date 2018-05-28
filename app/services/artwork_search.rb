class ArtworkSearch
  def initialize(user, id)
    @user = user
    @art_id = id
  end

  def artwork
    Artwork.new(request)
  end

  private
  attr_reader :art_id, :user

  def request
    ArtworkRequestService.new(user, art_id).raw_artwork
  end
end
