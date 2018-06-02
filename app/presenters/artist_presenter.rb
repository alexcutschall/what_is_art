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
      "Name Unavailable"
    end
  end

  def birthday
    if @model.birthday != ""
      @model.birthday
    else
      "Birthday Unknown"
    end
  end

  def deathday
    if @model.deathday != ""
      @model.deathday
    else
      "Deathday Unknown"
    end
  end

  def hometown
    if @model.hometown != ""
      @model.hometown
    else
      "Hometown Unknown"
    end
  end

  def nationality
    if @model.nationality != ""
      @model.nationality
    else
      "Nationality Unknown"
    end
  end

  def similar_artists
    if @model.similar_artists != ""
      @model.similar_artists
    else
      "Similar Artists Unknown"
    end
  end

  def similar_contemporary_artists
    if @model.similar_contemporary_artists != ""
      @model.similar_contemporary_artists
    else
      "Similar Artists Unknown"
    end
  end

  def genes
    if @model.genes != ""
      @model.genes
    else
      "Similar Genes Unknown"
    end
  end

end
