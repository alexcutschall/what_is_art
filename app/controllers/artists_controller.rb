class ArtistsController < ApplicationController
  def index
    if params[:type] == "contemporary"
      @artists = ArtistSearch.new(params[:id], current_user).contemporary_artists
    elsif params[:type] == "similar"
      @artists = ArtistSearch.new(params[:id], current_user).similar_artists
    end
    render :show
  end

  def show
    artwork_id = params[:id]
    @artists = ArtistSearch.new(artwork_id, current_user).artist
  end
end
