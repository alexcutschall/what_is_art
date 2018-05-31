class ArtworkPresenter < BasePresenter

  def image
    if @model.image != "" || nil
      @model.image
    else
      "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fitfunnylife.files.wordpress.com%2F2008%2F06%2Ffunny-dogs-img_1.jpg&f=1"
    end
  end

  def title
    if @model.title != ""
      @model.title
    else
      "Title Unavailable"
    end
  end

  def category
    if @model.category != ""
      @model.category
    else
      "Category Unknown"
    end
  end

  def medium
    if @model.medium != ""
      @model.medium
    else
      "Medium Unknown"
    end
  end

  def date
    if @model.date != ""
      @model.date
    else
      "Unknown"
    end
  end

  def series
    if @model.series != ""
      @model.series
    else
      "Unknown"
    end
  end

  def literature
    if @model.literature != ""
      @model.literature
    else
      "Unknown"
    end
  end

  def collecting_institution
    if @model.collecting_institution != ""
      @model.collecting_institution
    else
      "Collecting Institution Unknown"
    end
  end

  def artist
    if @model.artist != ""
      @model.artist
    else
      "Artist Unknown"
    end
  end

  def similar_artworks
    if @model.similar_artworks != ""
      @model.similar_artworks
    else
      "Similar Artworks Unknown"
    end
  end

  def genes
    if @model.gene != ""
      @model.gene
    else
      "Similar Genes Unknown"
    end
  end

end
