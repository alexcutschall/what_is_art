class GalleryController < ApplicationController
  def index
    @search_artworks = GallerySearch.new(current_user).artworks
  end
end
