class ArtistsController < ApplicationController
  def show
    artwork_id = params[:id]
    @artists = ArtistSearch.new(artwork_id, current_user).artist
  end
end
