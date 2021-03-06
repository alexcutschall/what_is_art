class GallerySearch
  def initialize(current_user)
    @user = current_user
  end

  def artworks
    request[:_embedded][:artworks].map do |information|
      Artwork.new(information)
    end
  end

  def next_page
    request[:_links][:next][:href].split("=")[1]
  end

  private
  attr_reader :user

  def request
    GalleryRequestService.new(user).raw_artworks
  end

end
