class Artwork
  attr_reader :id, :title, :category, :medium,
              :date, :series, :literature, :collecting_institution,
              :similar_artworks, :gene, :image
  def initialize(information)
    @id = information[:id]
    @title = information[:title]
    @category = information[:category] if information[:category]
    @medium = information[:medium] if information[:medium]
    @date = information[:date] if information[:date]
    @series = information[:series] if information[:series]
    @literature = information[:literature] if information[:literature]
    @collecting_institution = information[:collecting_institution] if information[:collecting_institution]
    @artist = information[:_links][:artists][:href].split('.net')[1] if information[:_links][:artists]
    @similar_artworks = information[:_links][:similar_artworks][:href] if information[:_links][:similar_artworks]
    @gene = information[:_links][:genes][:href] if information[:_links][:genes]
    @image = information[:_links][:thumbnail][:href] if information[:_links][:thumbnail]
    @large_image_link = information[:_links][:image][:href] if information[:_links][:image]
    @image_sizes = information[:image_versions] if information[:image_versions]
  end

  def large_image
    if image_sizes.include?("large")
      @large_image_link.sub("{image_version}", "large")
    else
      @large_image_link.sub("{image_version}", "#{@image_sizes.first}")
    end
  end
end
