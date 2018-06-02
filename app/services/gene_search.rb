class GeneSearch
  def initialize(user, search_id)
    @user = user
    @search_id = search_id
  end

  def artist_genes
    artist_request.map do |information|
      binding.pry
      Gene.new(information)
    end
  end

  def artwork_genes
    artwork_request.map do |information|
      Gene.new(information)
    end
  end

  private
  attr_reader :search_id, :user

  def artwork_request
    GeneSearchService.new(user, search_id).raw_artwork_gene_information
  end

  def artist_request
    GeneSearchService.new(user, search_id).raw_artist_gene_information
  end
end
