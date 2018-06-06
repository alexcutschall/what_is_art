class ArtistPresenter < BasePresenter
  def id
    @model.id
  end

  def image
    if @model.image != ""
      @model.image
    else
      "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fitfunnylife.files.wordpress.com%2F2008%2F06%2Ffunny-dogs-img_1.jpg&f=1"
    end
  end

  def name
    if @model.name != ""
      @model.name
    else
      "Unknown"
    end
  end

  def birthday
    if @model.birthday != ""
      @model.birthday
    else
      "Unknown"
    end
  end

  def deathday
    if @model.deathday != ""
      @model.deathday
    else
      "Unknown"
    end
  end

  def hometown
    if @model.hometown != ""
      @model.hometown
    else
      "Unknown"
    end
  end

  def location
    if @model.location != ""
      @model.location
    else
      "Unknown"
    end
  end

  def nationality
    if @model.nationality != ""
      @model.nationality
    else
      "Unknown"
    end
  end

  def similar_artists
    if @model.similar_artists != ""
      @model.similar_artists
    else
      "Unknown"
    end
  end

  def similar_contemporary_artists
    if @model.similar_contemporary_artists != ""
      @model.similar_contemporary_artists
    else
      "Unknown"
    end
  end

  def genes
    if @model.genes != ""
      @model.genes
    else
      "Unknown"
    end
  end

end
