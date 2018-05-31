class GenesController < ApplicationController
  def index
    @gene = GeneSearch.new(current_user, params[:id]).genes
  end
end
