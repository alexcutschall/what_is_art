class GenePresenter < BasePresenter

  def name
    if @model.name != nil
      @model.name
    else
      "Name Unknown"
    end
  end

  def description
    if @model.description != nil
      @model.description
    else
      "Description Unknown"
    end
  end

  def artworks
    if @model.artworks != nil
      @model.artworks
    else
      "Artworks Unknown"
    end

    def artists
      if @model.artists != nil
        @model.artists?
      else
        "Artists Unknown"
      end
    end
  end

end
