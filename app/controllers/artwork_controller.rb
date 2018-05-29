class ArtworkController < ApplicationController
  def index
    @similar_artworks = SimilarArtworkSearch.new(current_user, params[:id]).artworks
  end

  def show
    @artwork = ArtworkSearch.new(current_user, params[:id]).artwork
  end
end
