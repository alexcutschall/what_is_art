class GenesController < ApplicationController
  def index
    if params[:type] == "artist"
      @genes = GeneSearch.new(current_user, params[:id]).artist_genes
    else
      @genes = GeneSearch.new(current_user, params[:id]).artwork_genes
    end
  end
end
