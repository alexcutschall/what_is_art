class Artist
  attr_reader :name, :birthday, :deathday, :hometown,
              :location, :nationality, :image,
              :similar_artists, :similar_contemporary_artists,
              :genes

  def initialize(information)
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
  end
end
