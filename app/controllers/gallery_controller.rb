class GalleryController < ApplicationController
  def index
    @search_artworks = GallerySearch.new(current_user).artworks
    @next_page = GallerySearch.new(current_user).next_page
  end

  def show
    @search_artworks = NextGallerySearch.new(current_user, params[:id]).next_artworks
    @next_page = NextGallerySearch.new(current_user, params[:id]).next_page

    render :index
  end
end
