class RandomArtworkController < ApplicationController
  def show
    @artwork = RandomArtworkSearch.new(current_user).artwork
    redirect_to 'artwork/show'
  end
end
