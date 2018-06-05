class NextGallerySearch
  def initialize(user, id)
    @user = user
    @id = id
  end

  def next_artworks
    request[:_embedded][:artworks].map do |information|
      Artwork.new(information)
    end
  end

  def next_page
    request[:_links][:next][:href].split("=")[1]
  end

  private
  attr_reader :user, :id

  def request
    NextGallerySearchService.new(user, id).raw_next_artworks
  end
end
