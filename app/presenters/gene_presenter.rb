class GenePresenter < BasePresenter
  def id
    @model.id
  end

  def name
    if @model.name != ""
      @model.name
    else
      "Unknown"
    end
  end

  def description
    if @model.description != ""
      @model.description
    else
      "Unknown"
    end
  end

  def artworks
    if @model.artworks != ""
      @model.artworks
    else
      "Unknown"
    end

    def artists
      if @model.artists != ""
        @model.artists
      else
        "Unknown"
      end
    end
  end

end
