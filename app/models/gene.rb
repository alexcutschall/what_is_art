class Gene
  attr_reader :id, :name, :description,
              :artworks, :artists
  def initialize(information)
    @id = information[:id] if information[:id]
    @name = information[:display_name] if information[:display_name]
    @description = information[:description] if information[:description]
    @artworks = information[:_links][:artworks][:href] if information[:_links][:artworks]
    @artists = information[:_links][:artists][:href] if information[:_links][:artists]
  end
end
