class RandomArtworkController < ApplicationController
  def show
    @artwork = RandomArtworkSearch.new(current_user).artwork
  end
end
