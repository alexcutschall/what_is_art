class ArtistPresenter < BasePresenter

  def image
    if @model.image != nil
      @model.image
    else
      "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fitfunnylife.files.wordpress.com%2F2008%2F06%2Ffunny-dogs-img_1.jpg&f=1"
    end
  end

  def name
    if @model.name != nil
      @model.name
    else
      "Name Unavailable"
    end
  end

  def birthday
    if @model.birthday != nil
      @model.birthday
    else
      "Birthday Unknown"
    end
  end

  def deathday
    if @model.deathday != nil
      @model.deathday
    else
      "Deathday Unknown"
    end
  end

  def hometown
    if @model.hometown != nil
      @model.hometown
    else
      "Hometown Unknown"
    end
  end

  def nationality
    if @model.nationality != nil
      @model.nationality
    else
      "Nationality Unknown"
    end
  end

  def similar_artists
    if @model.similar_artists != nil
      @model.similar_artists
    else
      "Similar Artists Unknown"
    end
  end

  def similar_contemporary_artists
    if @model.similar_contemporary_artists != nil
      @model.similar_contemporary_artists
    else
      "Similar Artists Unknown"
    end
  end

  def genes
    if @model.genes != nil
      @model.genes
    else
      "Similar Genes Unknown"
    end
  end

end
