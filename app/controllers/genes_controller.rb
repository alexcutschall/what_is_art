class GenesController < ApplicationController
  def index
    @genes = GeneSearch.new(current_user, params[:id]).genes
  end
end
