class GenePresenter < BasePresenter

  def name
    if @model.name != ""
      @model.name
    else
      "Name Unknown"
    end
  end

  def description
    if @model.description != ""
      @model.description
    else
      "Description Unknown"
    end
  end

  def artworks
    if @model.artworks != ""
      @model.artworks
    else
      "Artworks Unknown"
    end

    def artists
      if @model.artists != ""
        @model.artists?
      else
        "Artists Unknown"
      end
    end
  end

end
