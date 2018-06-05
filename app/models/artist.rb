class Artist
  attr_reader :id, :name, :birthday, :deathday, :hometown,
              :location, :nationality, :image,
              :similar_artists, :similar_contemporary_artists,
              :genes, :large_image_link, :image_sizes

  def initialize(information)
    @id = information[:id]
    @name = information[:name] if information[:name]
    @birthday = information[:birthday] if information[:birthday]
    @deathday = information[:deathday] if information[:deathday]
    @hometown = information[:hometown] if information[:hometown]
    @location = information[:location] if information[:location]
    @nationality = information[:nationality] if information[:nationality]
    @image = information[:_links][:thumbnail][:href] if information[:_links][:thumbnail]
    @similar_artists = information[:_links][:similar_artists][:href] if information[:_links][:similar_artists]
    @similar_contemporary_artists = information[:_links][:similar_contemporary_artists][:href] if information[:_links][:similar_contemporary_artists]
    @genes = information[:_links][:genes][:href] if information[:_links][:genes]
    @large_image_link = information[:_links][:image][:href] if information[:_links][:image]
    @image_sizes = information[:image_versions] if information[:image_versions]
  end

  def large_image
    if @image_sizes.include?("large")
      @large_image_link.sub("{image_version}", "large")
    else
      @large_image_link.sub("{image_version}", "#{@image_sizes.first}")
    end
  end
end
