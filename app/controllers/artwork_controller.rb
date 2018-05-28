class ArtworkController < ApplicationController
  def show
    @artwork = ArtworkSearch.new(current_user, params[:id]).artwork
  end
end
