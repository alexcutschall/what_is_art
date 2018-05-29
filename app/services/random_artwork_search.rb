class RandomArtworkSearch
  def initialize(user)
    @user = user
  end

  def artwork
    Artwork.new(request)
  end

  private
  attr_reader :user

  def request
    RandomArtworkService.new(user).raw_random_artwork
  end
end
