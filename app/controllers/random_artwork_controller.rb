class RandomArtworkController < ApplicationController
  def show
    @random_artwork = RandomArtworkSearch.new(current_user).artwork
  end
end
