class GeneSearch
  def initialize(user, artwork_id)
    @user = user
    @artwork_id = artwork_id
  end

  def genes
    request
  end

  private
  attr_reader :artwork_id, :user

  def request
    GeneSearchService.new(user, artwork_id).raw_gene_information
  end
end
